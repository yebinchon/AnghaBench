; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_ra_rename.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_ra_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64*, i32 }
%struct.TYPE_12__ = type { i32, i64 }

@RID_MAX_GPR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"rename    $f $r $r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i64, i64)* @ra_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ra_rename(%struct.TYPE_13__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64 %14, i64* %19, align 8
  %20 = call i32 @regcost_ref(i64 %14)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.TYPE_12__* @IR(i32 %21)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @RID_MAX_GPR, align 8
  %33 = icmp ult i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @RID_MAX_GPR, align 8
  %37 = icmp ult i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = icmp eq i32 %34, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @lua_assert(i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @rset_test(i32 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %3
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @rset_test(i32 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %48, %3
  %56 = phi i1 [ false, %3 ], [ %54, %48 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @lua_assert(i32 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @ra_free(%struct.TYPE_13__* %59, i64 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @ra_modified(%struct.TYPE_13__* %62, i64 %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @rset_clear(i32 %67, i64 %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @ra_noweak(%struct.TYPE_13__* %70, i64 %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @regcost_ref(i64 %79)
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = inttoptr i64 %82 to %struct.TYPE_13__*
  %84 = call i32 @RA_DBGX(%struct.TYPE_13__* %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @emit_movrr(%struct.TYPE_13__* %85, %struct.TYPE_12__* %86, i64 %87, i64 %88)
  %90 = load i32, i32* %7, align 4
  %91 = call %struct.TYPE_12__* @IR(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ra_hasspill(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %55
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = load i64, i64* %5, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ra_addrename(%struct.TYPE_13__* %97, i64 %98, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %96, %55
  ret void
}

declare dso_local i32 @regcost_ref(i64) #1

declare dso_local %struct.TYPE_12__* @IR(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @rset_test(i32, i64) #1

declare dso_local i32 @ra_free(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @ra_modified(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @rset_clear(i32, i64) #1

declare dso_local i32 @ra_noweak(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @RA_DBGX(%struct.TYPE_13__*) #1

declare dso_local i32 @emit_movrr(%struct.TYPE_13__*, %struct.TYPE_12__*, i64, i64) #1

declare dso_local i32 @ra_hasspill(i32) #1

declare dso_local i32 @ra_addrename(%struct.TYPE_13__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
