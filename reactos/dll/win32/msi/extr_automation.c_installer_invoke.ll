; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_installer_invoke.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_installer_invoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISP_E_MEMBERNOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32*, i32*, i32*, i32*)* @installer_invoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @installer_invoke(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %20 = load i32, i32* %12, align 4
  switch i32 %20, label %154 [
    i32 146, label %21
    i32 137, label %28
    i32 136, label %36
    i32 138, label %43
    i32 130, label %50
    i32 129, label %57
    i32 145, label %64
    i32 140, label %71
    i32 128, label %78
    i32 139, label %84
    i32 132, label %91
    i32 144, label %98
    i32 143, label %105
    i32 142, label %112
    i32 141, label %119
    i32 133, label %126
    i32 135, label %133
    i32 134, label %140
    i32 131, label %147
  ]

21:                                               ; preds = %9
  %22 = load i32, i32* %15, align 4
  %23 = load i32*, i32** %16, align 8
  %24 = load i32*, i32** %17, align 8
  %25 = load i32*, i32** %18, align 8
  %26 = load i32*, i32** %19, align 8
  %27 = call i32 @InstallerImpl_CreateRecord(i32 %22, i32* %23, i32* %24, i32* %25, i32* %26)
  store i32 %27, i32* %10, align 4
  br label %156

28:                                               ; preds = %9
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load i32*, i32** %16, align 8
  %32 = load i32*, i32** %17, align 8
  %33 = load i32*, i32** %18, align 8
  %34 = load i32*, i32** %19, align 8
  %35 = call i32 @InstallerImpl_OpenPackage(i32* %29, i32 %30, i32* %31, i32* %32, i32* %33, i32* %34)
  store i32 %35, i32* %10, align 4
  br label %156

36:                                               ; preds = %9
  %37 = load i32, i32* %15, align 4
  %38 = load i32*, i32** %16, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = load i32*, i32** %18, align 8
  %41 = load i32*, i32** %19, align 8
  %42 = call i32 @InstallerImpl_OpenProduct(i32 %37, i32* %38, i32* %39, i32* %40, i32* %41)
  store i32 %42, i32* %10, align 4
  br label %156

43:                                               ; preds = %9
  %44 = load i32, i32* %15, align 4
  %45 = load i32*, i32** %16, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = load i32*, i32** %18, align 8
  %48 = load i32*, i32** %19, align 8
  %49 = call i32 @InstallerImpl_OpenDatabase(i32 %44, i32* %45, i32* %46, i32* %47, i32* %48)
  store i32 %49, i32* %10, align 4
  br label %156

50:                                               ; preds = %9
  %51 = load i32, i32* %15, align 4
  %52 = load i32*, i32** %16, align 8
  %53 = load i32*, i32** %17, align 8
  %54 = load i32*, i32** %18, align 8
  %55 = load i32*, i32** %19, align 8
  %56 = call i32 @InstallerImpl_SummaryInformation(i32 %51, i32* %52, i32* %53, i32* %54, i32* %55)
  store i32 %56, i32* %10, align 4
  br label %156

57:                                               ; preds = %9
  %58 = load i32, i32* %15, align 4
  %59 = load i32*, i32** %16, align 8
  %60 = load i32*, i32** %17, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = load i32*, i32** %19, align 8
  %63 = call i32 @InstallerImpl_UILevel(i32 %58, i32* %59, i32* %60, i32* %61, i32* %62)
  store i32 %63, i32* %10, align 4
  br label %156

64:                                               ; preds = %9
  %65 = load i32, i32* %15, align 4
  %66 = load i32*, i32** %16, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = load i32*, i32** %18, align 8
  %69 = load i32*, i32** %19, align 8
  %70 = call i32 @InstallerImpl_EnableLog(i32 %65, i32* %66, i32* %67, i32* %68, i32* %69)
  store i32 %70, i32* %10, align 4
  br label %156

71:                                               ; preds = %9
  %72 = load i32, i32* %15, align 4
  %73 = load i32*, i32** %16, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = load i32*, i32** %18, align 8
  %76 = load i32*, i32** %19, align 8
  %77 = call i32 @InstallerImpl_InstallProduct(i32 %72, i32* %73, i32* %74, i32* %75, i32* %76)
  store i32 %77, i32* %10, align 4
  br label %156

78:                                               ; preds = %9
  %79 = load i32, i32* %15, align 4
  %80 = load i32*, i32** %17, align 8
  %81 = load i32*, i32** %18, align 8
  %82 = load i32*, i32** %19, align 8
  %83 = call i32 @InstallerImpl_Version(i32 %79, i32* %80, i32* %81, i32* %82)
  store i32 %83, i32* %10, align 4
  br label %156

84:                                               ; preds = %9
  %85 = load i32, i32* %15, align 4
  %86 = load i32*, i32** %16, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = load i32*, i32** %18, align 8
  %89 = load i32*, i32** %19, align 8
  %90 = call i32 @InstallerImpl_LastErrorRecord(i32 %85, i32* %86, i32* %87, i32* %88, i32* %89)
  store i32 %90, i32* %10, align 4
  br label %156

91:                                               ; preds = %9
  %92 = load i32, i32* %15, align 4
  %93 = load i32*, i32** %16, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = load i32*, i32** %18, align 8
  %96 = load i32*, i32** %19, align 8
  %97 = call i32 @InstallerImpl_RegistryValue(i32 %92, i32* %93, i32* %94, i32* %95, i32* %96)
  store i32 %97, i32* %10, align 4
  br label %156

98:                                               ; preds = %9
  %99 = load i32, i32* %15, align 4
  %100 = load i32*, i32** %16, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = load i32*, i32** %18, align 8
  %103 = load i32*, i32** %19, align 8
  %104 = call i32 @InstallerImpl_Environment(i32 %99, i32* %100, i32* %101, i32* %102, i32* %103)
  store i32 %104, i32* %10, align 4
  br label %156

105:                                              ; preds = %9
  %106 = load i32, i32* %15, align 4
  %107 = load i32*, i32** %16, align 8
  %108 = load i32*, i32** %17, align 8
  %109 = load i32*, i32** %18, align 8
  %110 = load i32*, i32** %19, align 8
  %111 = call i32 @InstallerImpl_FileAttributes(i32 %106, i32* %107, i32* %108, i32* %109, i32* %110)
  store i32 %111, i32* %10, align 4
  br label %156

112:                                              ; preds = %9
  %113 = load i32, i32* %15, align 4
  %114 = load i32*, i32** %16, align 8
  %115 = load i32*, i32** %17, align 8
  %116 = load i32*, i32** %18, align 8
  %117 = load i32*, i32** %19, align 8
  %118 = call i32 @InstallerImpl_FileSize(i32 %113, i32* %114, i32* %115, i32* %116, i32* %117)
  store i32 %118, i32* %10, align 4
  br label %156

119:                                              ; preds = %9
  %120 = load i32, i32* %15, align 4
  %121 = load i32*, i32** %16, align 8
  %122 = load i32*, i32** %17, align 8
  %123 = load i32*, i32** %18, align 8
  %124 = load i32*, i32** %19, align 8
  %125 = call i32 @InstallerImpl_FileVersion(i32 %120, i32* %121, i32* %122, i32* %123, i32* %124)
  store i32 %125, i32* %10, align 4
  br label %156

126:                                              ; preds = %9
  %127 = load i32, i32* %15, align 4
  %128 = load i32*, i32** %16, align 8
  %129 = load i32*, i32** %17, align 8
  %130 = load i32*, i32** %18, align 8
  %131 = load i32*, i32** %19, align 8
  %132 = call i32 @InstallerImpl_ProductState(i32 %127, i32* %128, i32* %129, i32* %130, i32* %131)
  store i32 %132, i32* %10, align 4
  br label %156

133:                                              ; preds = %9
  %134 = load i32, i32* %15, align 4
  %135 = load i32*, i32** %16, align 8
  %136 = load i32*, i32** %17, align 8
  %137 = load i32*, i32** %18, align 8
  %138 = load i32*, i32** %19, align 8
  %139 = call i32 @InstallerImpl_ProductInfo(i32 %134, i32* %135, i32* %136, i32* %137, i32* %138)
  store i32 %139, i32* %10, align 4
  br label %156

140:                                              ; preds = %9
  %141 = load i32, i32* %15, align 4
  %142 = load i32*, i32** %16, align 8
  %143 = load i32*, i32** %17, align 8
  %144 = load i32*, i32** %18, align 8
  %145 = load i32*, i32** %19, align 8
  %146 = call i32 @InstallerImpl_Products(i32 %141, i32* %142, i32* %143, i32* %144, i32* %145)
  store i32 %146, i32* %10, align 4
  br label %156

147:                                              ; preds = %9
  %148 = load i32, i32* %15, align 4
  %149 = load i32*, i32** %16, align 8
  %150 = load i32*, i32** %17, align 8
  %151 = load i32*, i32** %18, align 8
  %152 = load i32*, i32** %19, align 8
  %153 = call i32 @InstallerImpl_RelatedProducts(i32 %148, i32* %149, i32* %150, i32* %151, i32* %152)
  store i32 %153, i32* %10, align 4
  br label %156

154:                                              ; preds = %9
  %155 = load i32, i32* @DISP_E_MEMBERNOTFOUND, align 4
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %154, %147, %140, %133, %126, %119, %112, %105, %98, %91, %84, %78, %71, %64, %57, %50, %43, %36, %28, %21
  %157 = load i32, i32* %10, align 4
  ret i32 %157
}

declare dso_local i32 @InstallerImpl_CreateRecord(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_OpenPackage(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_OpenProduct(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_OpenDatabase(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_SummaryInformation(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_UILevel(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_EnableLog(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_InstallProduct(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_Version(i32, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_LastErrorRecord(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_RegistryValue(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_Environment(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_FileAttributes(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_FileSize(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_FileVersion(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_ProductState(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_ProductInfo(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_Products(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @InstallerImpl_RelatedProducts(i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
