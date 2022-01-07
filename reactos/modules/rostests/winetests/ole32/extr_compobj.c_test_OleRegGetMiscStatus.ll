; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_OleRegGetMiscStatus.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_OleRegGetMiscStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_Testclass = common dso_local global i32 0, align 4
@DVASPECT_ICON = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@REGDB_E_CLASSNOTREG = common dso_local global i32 0, align 4
@CLSID_StdFont = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@actctx_manifest = common dso_local global i32 0, align 4
@OLEMISC_RECOMPOSEONRESIZE = common dso_local global i32 0, align 4
@DVASPECT_DOCPRINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_OleRegGetMiscStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_OleRegGetMiscStatus() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @DVASPECT_ICON, align 4
  %6 = call i32 @OleRegGetMiscStatus(i32* @CLSID_Testclass, i32 %5, i32* null)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @E_INVALIDARG, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 -559038737, i32* %3, align 4
  %13 = load i32, i32* @DVASPECT_ICON, align 4
  %14 = call i32 @OleRegGetMiscStatus(i32* @CLSID_Testclass, i32 %13, i32* %3)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @REGDB_E_CLASSNOTREG, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 -1, i32* %3, align 4
  %26 = load i32, i32* @DVASPECT_ICON, align 4
  %27 = call i32 @OleRegGetMiscStatus(i32* @CLSID_StdFont, i32 %26, i32* %3)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @S_OK, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @actctx_manifest, align 4
  %40 = call i32 @activate_context(i32 %39, i32* %1)
  store i32 %40, i32* %2, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %88

42:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  %43 = load i32, i32* @DVASPECT_ICON, align 4
  %44 = call i32 @OleRegGetMiscStatus(i32* @CLSID_Testclass, i32 %43, i32* %3)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @S_OK, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @OLEMISC_RECOMPOSEONRESIZE, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 0, i32* %3, align 4
  %57 = load i32, i32* @DVASPECT_ICON, align 4
  %58 = call i32 @OleRegGetMiscStatus(i32* @CLSID_StdFont, i32 %57, i32* %3)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @S_OK, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @OLEMISC_RECOMPOSEONRESIZE, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %69)
  store i32 -1, i32* %3, align 4
  %71 = load i32, i32* @DVASPECT_DOCPRINT, align 4
  %72 = call i32 @OleRegGetMiscStatus(i32* @CLSID_Testclass, i32 %71, i32* %3)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @S_OK, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %3, align 4
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @pDeactivateActCtx(i32 0, i32 %84)
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @pReleaseActCtx(i32 %86)
  br label %88

88:                                               ; preds = %42, %0
  ret void
}

declare dso_local i32 @OleRegGetMiscStatus(i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @activate_context(i32, i32*) #1

declare dso_local i32 @pDeactivateActCtx(i32, i32) #1

declare dso_local i32 @pReleaseActCtx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
