; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_upgrade.c_ITERATE_FindRelatedProducts.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_upgrade.c_ITERATE_FindRelatedProducts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@SQUASHED_GUID_SIZE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@GUID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Looking at index %u product %s\0A\00", align 1
@MSIINSTALLCONTEXT_USERMANAGED = common dso_local global i32 0, align 4
@MSIINSTALLCONTEXT_USERUNMANAGED = common dso_local global i32 0, align 4
@MSIINSTALLCONTEXT_MACHINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"product key not found\0A\00", align 1
@INSTALLPROPERTY_VERSIONW = common dso_local global i32 0, align 4
@msidbUpgradeAttributesVersionMinInclusive = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"version below minimum\0A\00", align 1
@msidbUpgradeAttributesVersionMaxInclusive = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"version above maximum\0A\00", align 1
@INSTALLPROPERTY_LANGUAGEW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"language doesn't match\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"found related product\0A\00", align 1
@INSTALLMESSAGE_ACTIONDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i32*)* @ITERATE_FindRelatedProducts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ITERATE_FindRelatedProducts(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  store i32* %27, i32** %6, align 8
  %28 = load i32, i32* @SQUASHED_GUID_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %7, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %32 = mul nuw i64 4, %29
  %33 = udiv i64 %32, 4
  store i64 %33, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %34, i64* %14, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = call i64 @MSI_RecordGetString(%struct.TYPE_8__* %35, i32 1)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i64 @MSIREG_OpenUpgradeCodesKey(i64 %37, i32* %13, i32 %38)
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* @ERROR_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %44, i64* %3, align 8
  store i32 1, i32* %16, align 4
  br label %193

45:                                               ; preds = %2
  %46 = call %struct.TYPE_8__* @MSI_CreateRecord(i32 1)
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %15, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = call i64 @MSI_RecordGetInteger(%struct.TYPE_8__* %47, i32 5)
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %183, %179, %45
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @ERROR_SUCCESS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %186

53:                                               ; preds = %49
  %54 = load i32, i32* %13, align 4
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @RegEnumValueW(i32 %54, i64 %55, i32* %31, i64* %11, i32* null, i32* null, i32* null, i32* null)
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* @ERROR_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %183

60:                                               ; preds = %53
  %61 = load i32, i32* @GUID_SIZE, align 4
  %62 = zext i32 %61 to i64
  %63 = call i8* @llvm.stacksave()
  store i8* %63, i8** %17, align 8
  %64 = alloca i32, i64 %62, align 16
  store i64 %62, i64* %18, align 8
  store i64 0, i64* %22, align 8
  store i64 256, i64* %24, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @debugstr_w(i32* %31)
  %67 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %65, i32 %66)
  %68 = call i32 @unsquash_guid(i32* %31, i32* %64)
  %69 = load i32, i32* @MSIINSTALLCONTEXT_USERMANAGED, align 4
  %70 = load i32, i32* @FALSE, align 4
  %71 = call i64 @MSIREG_OpenProductKey(i32* %64, i32* null, i32 %69, i32* %25, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %60
  %74 = load i32, i32* @MSIINSTALLCONTEXT_USERUNMANAGED, align 4
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i64 @MSIREG_OpenProductKey(i32* %64, i32* null, i32 %74, i32* %25, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load i32, i32* @MSIINSTALLCONTEXT_MACHINE, align 4
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i64 @MSIREG_OpenProductKey(i32* %64, i32* null, i32 %79, i32* %25, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %85, i64* %14, align 8
  %86 = load i64, i64* %9, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %9, align 8
  store i32 2, i32* %16, align 4
  br label %179

88:                                               ; preds = %78, %73, %60
  store i64 8, i64* %24, align 8
  %89 = load i32, i32* %25, align 4
  %90 = load i32, i32* @INSTALLPROPERTY_VERSIONW, align 4
  %91 = ptrtoint i64* %22 to i32
  %92 = call i32 @RegQueryValueExW(i32 %89, i32 %90, i32* null, i32* null, i32 %91, i64* %24)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = call i64 @MSI_RecordGetString(%struct.TYPE_8__* %93, i32 2)
  store i64 %94, i64* %19, align 8
  %95 = load i64, i64* %19, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %88
  %98 = load i64, i64* %19, align 8
  %99 = call i64 @msi_version_str_to_dword(i64 %98)
  store i64 %99, i64* %23, align 8
  %100 = load i64, i64* %22, align 8
  %101 = load i64, i64* %23, align 8
  %102 = sub nsw i64 %100, %101
  store i64 %102, i64* %26, align 8
  %103 = load i64, i64* %26, align 8
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %97
  %106 = load i64, i64* %26, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* @msidbUpgradeAttributesVersionMinInclusive, align 8
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %108, %97
  %114 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* %25, align 4
  %116 = call i32 @RegCloseKey(i32 %115)
  %117 = load i64, i64* %9, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %9, align 8
  store i32 2, i32* %16, align 4
  br label %179

119:                                              ; preds = %108, %105
  br label %120

120:                                              ; preds = %119, %88
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = call i64 @MSI_RecordGetString(%struct.TYPE_8__* %121, i32 3)
  store i64 %122, i64* %19, align 8
  %123 = load i64, i64* %19, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %120
  %126 = load i64, i64* %19, align 8
  %127 = call i64 @msi_version_str_to_dword(i64 %126)
  store i64 %127, i64* %23, align 8
  %128 = load i64, i64* %22, align 8
  %129 = load i64, i64* %23, align 8
  %130 = sub nsw i64 %128, %129
  store i64 %130, i64* %26, align 8
  %131 = load i64, i64* %26, align 8
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %125
  %134 = load i64, i64* %26, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load i64, i64* %10, align 8
  %138 = load i64, i64* @msidbUpgradeAttributesVersionMaxInclusive, align 8
  %139 = and i64 %137, %138
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %136, %125
  %142 = load i32, i32* %25, align 4
  %143 = call i32 @RegCloseKey(i32 %142)
  %144 = load i64, i64* %9, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %9, align 8
  store i32 2, i32* %16, align 4
  br label %179

146:                                              ; preds = %136, %133
  %147 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %120
  store i64 8, i64* %24, align 8
  %149 = load i32, i32* %25, align 4
  %150 = load i32, i32* @INSTALLPROPERTY_LANGUAGEW, align 4
  %151 = ptrtoint i64* %22 to i32
  %152 = call i32 @RegQueryValueExW(i32 %149, i32 %150, i32* null, i32* null, i32 %151, i64* %24)
  %153 = load i32, i32* %25, align 4
  %154 = call i32 @RegCloseKey(i32 %153)
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %156 = call i64 @MSI_RecordGetString(%struct.TYPE_8__* %155, i32 4)
  store i64 %156, i64* %20, align 8
  %157 = load i64, i64* %22, align 8
  %158 = load i64, i64* %20, align 8
  %159 = load i64, i64* %10, align 8
  %160 = call i32 @check_language(i64 %157, i64 %158, i64 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %148
  %163 = load i64, i64* %9, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %9, align 8
  %165 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 2, i32* %16, align 4
  br label %179

166:                                              ; preds = %148
  %167 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %169 = call i64 @MSI_RecordGetString(%struct.TYPE_8__* %168, i32 7)
  store i64 %169, i64* %21, align 8
  %170 = load i32*, i32** %6, align 8
  %171 = load i64, i64* %21, align 8
  %172 = call i32 @append_productcode(i32* %170, i64 %171, i32* %64)
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %174 = call i32 @MSI_RecordSetStringW(%struct.TYPE_8__* %173, i32 1, i32* %64)
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* @INSTALLMESSAGE_ACTIONDATA, align 4
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %178 = call i32 @MSI_ProcessMessage(i32* %175, i32 %176, %struct.TYPE_8__* %177)
  store i32 0, i32* %16, align 4
  br label %179

179:                                              ; preds = %166, %162, %141, %113, %83
  %180 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %180)
  %181 = load i32, i32* %16, align 4
  switch i32 %181, label %196 [
    i32 0, label %182
    i32 2, label %49
  ]

182:                                              ; preds = %179
  br label %183

183:                                              ; preds = %182, %53
  %184 = load i64, i64* %9, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %9, align 8
  br label %49

186:                                              ; preds = %49
  %187 = load i32, i32* %13, align 4
  %188 = call i32 @RegCloseKey(i32 %187)
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = call i32 @msiobj_release(i32* %190)
  %192 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %192, i64* %3, align 8
  store i32 1, i32* %16, align 4
  br label %193

193:                                              ; preds = %186, %43
  %194 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %194)
  %195 = load i64, i64* %3, align 8
  ret i64 %195

196:                                              ; preds = %179
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @MSI_RecordGetString(%struct.TYPE_8__*, i32) #2

declare dso_local i64 @MSIREG_OpenUpgradeCodesKey(i64, i32*, i32) #2

declare dso_local %struct.TYPE_8__* @MSI_CreateRecord(i32) #2

declare dso_local i64 @MSI_RecordGetInteger(%struct.TYPE_8__*, i32) #2

declare dso_local i64 @RegEnumValueW(i32, i64, i32*, i64*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i32 @unsquash_guid(i32*, i32*) #2

declare dso_local i64 @MSIREG_OpenProductKey(i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @RegQueryValueExW(i32, i32, i32*, i32*, i32, i64*) #2

declare dso_local i64 @msi_version_str_to_dword(i64) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @check_language(i64, i64, i64) #2

declare dso_local i32 @append_productcode(i32*, i64, i32*) #2

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_8__*, i32, i32*) #2

declare dso_local i32 @MSI_ProcessMessage(i32*, i32, %struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @msiobj_release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
