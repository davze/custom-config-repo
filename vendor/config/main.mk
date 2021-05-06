# do not rename this or change path
DEVICE_PACKAGE_OVERLAYS += vendor/custom/vendor/overlay/common

# MicroG
PRODUCT_PACKAGES += \
    GmsCore \
    GsfProxy \
    FakeStore \
    com.google.android.maps.jar

# Seedvault
PRODUCT_PACKAGES += \
    Seedvault

# AuroraStore
PRODUCT_PACKAGES += \
    AuroraStore \
    AuroraServices
    
# Vanadium
PRODUCT_PACKAGES += \
    TrichromeChrome \
    TrichromeWebView
    
# Fix for Google Camera
PRODUCT_COPY_FILES += \
	vendor/custom/prebuilt/google_experience.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google_experience.xml
