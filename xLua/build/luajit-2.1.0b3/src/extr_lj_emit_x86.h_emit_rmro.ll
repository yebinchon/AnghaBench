; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_emit_x86.h_emit_rmro.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_emit_x86.h_emit_rmro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@LJ_GC64 = common dso_local global i64 0, align 8
@RID_RIP = common dso_local global i32 0, align 4
@XM_OFS0 = common dso_local global i32 0, align 4
@RID_EBP = common dso_local global i32 0, align 4
@XM_OFS8 = common dso_local global i32 0, align 4
@XM_OFS32 = common dso_local global i32 0, align 4
@RID_ESP = common dso_local global i32 0, align 4
@XM_SCALE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i64)* @emit_rmro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_rmro(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %11, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @ra_hasreg(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %72

19:                                               ; preds = %5
  %20 = load i64, i64* @LJ_GC64, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @RID_RIP, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @XM_OFS0, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i64*, i64** %11, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 -4
  store i64* %29, i64** %11, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64*, i64** %11, align 8
  store i64 %30, i64* %31, align 8
  br label %59

32:                                               ; preds = %22, %19
  %33 = load i64, i64* %10, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 7
  %38 = load i32, i32* @RID_EBP, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @XM_OFS0, align 4
  store i32 %41, i32* %12, align 4
  br label %58

42:                                               ; preds = %35, %32
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @checki8(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i64, i64* %10, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 -1
  store i64* %49, i64** %11, align 8
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @XM_OFS8, align 4
  store i32 %50, i32* %12, align 4
  br label %57

51:                                               ; preds = %42
  %52 = load i64*, i64** %11, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 -4
  store i64* %53, i64** %11, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64*, i64** %11, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i32, i32* @XM_OFS32, align 4
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %51, %46
  br label %58

58:                                               ; preds = %57, %40
  br label %59

59:                                               ; preds = %58, %26
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 7
  %62 = load i32, i32* @RID_ESP, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, i32* @XM_SCALE1, align 4
  %66 = load i32, i32* @RID_ESP, align 4
  %67 = load i32, i32* @RID_ESP, align 4
  %68 = call i64 @MODRM(i32 %65, i32 %66, i32 %67)
  %69 = load i64*, i64** %11, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 -1
  store i64* %70, i64** %11, align 8
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %64, %59
  br label %80

72:                                               ; preds = %5
  %73 = load i64, i64* %10, align 8
  %74 = load i64*, i64** %11, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 -4
  store i64 %73, i64* %75, align 8
  %76 = load i64*, i64** %11, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 -4
  store i64* %77, i64** %11, align 8
  %78 = load i32, i32* @RID_EBP, align 4
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* @XM_OFS0, align 4
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %72, %71
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i64*, i64** %11, align 8
  %86 = call i64* @emit_opm(i32 %81, i32 %82, i32 %83, i32 %84, i64* %85, i32 0)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i64* %86, i64** %88, align 8
  ret void
}

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i64 @checki8(i64) #1

declare dso_local i64 @MODRM(i32, i32, i32) #1

declare dso_local i64* @emit_opm(i32, i32, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
