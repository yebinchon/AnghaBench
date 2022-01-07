; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_automation.c_Installer_VersionGet.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_automation.c_Installer_VersionGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32* }

@pInstaller = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@DISPATCH_PROPERTYGET = common dso_local global i32 0, align 4
@VT_BSTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @Installer_VersionGet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Installer_VersionGet(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = bitcast %struct.TYPE_3__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  %7 = load i32, i32* @pInstaller, align 4
  %8 = load i32, i32* @DISPATCH_PROPERTYGET, align 4
  %9 = load i32, i32* @VT_BSTR, align 4
  %10 = call i32 @invoke(i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %8, %struct.TYPE_3__* %4, i32* %3, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = call i64 @V_BSTR(i32* %3)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @V_BSTR(i32* %3)
  %16 = call i32 @lstrcpyW(i32 %14, i64 %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = call i32 @VariantClear(i32* %3)
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @invoke(i32, i8*, i32, %struct.TYPE_3__*, i32*, i32) #2

declare dso_local i64 @V_BSTR(i32*) #2

declare dso_local i32 @lstrcpyW(i32, i64) #2

declare dso_local i32 @VariantClear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
