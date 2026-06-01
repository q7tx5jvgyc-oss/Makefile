# إعدادات المعماريات والـ SDK المستهدفة
TARGET := iphone:clang:latest:14.0
ARCHS := arm64 arm64e

# استيراد إعدادات Theos الأساسية
include $(THEOS)/makefiles/common.mk

# اسم الـ dylib النهائي الذي سيتم إنشاؤه
TWEAK_NAME = AutoClicker

# ملفات الكود المصدري التي سيتم بناؤها (تأكد من مطابقة الاسم لملف كودك)
AutoClicker_FILES = main.mm

# المكتبات البرمجية والأطر التي يحتاجها الأوتو كليكر للعمل على النظام
AutoClicker_FRAMEWORKS = UIKit CoreGraphics QuartzCore

# استيراد قواعد بناء التويك (Dylib)
include $(THEOS_MAKE_PATH)/tweak.mk
