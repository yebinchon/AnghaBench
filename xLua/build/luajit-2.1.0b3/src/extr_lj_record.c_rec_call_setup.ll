; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_call_setup.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_call_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@LJ_FR2 = common dso_local global i64 0, align 8
@MM_call = common dso_local global i32 0, align 4
@LJ_TRERR_NOMM = common dso_local global i32 0, align 4
@TREF_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64, i64)* @rec_call_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rec_call_setup(%struct.TYPE_10__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32* %18, i32** %8, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %10, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @getslot(%struct.TYPE_10__* %24, i64 %25)
  store i64 1, i64* %11, align 8
  br label %27

27:                                               ; preds = %39, %3
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @LJ_FR2, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %35, %36
  %38 = call i32 @getslot(%struct.TYPE_10__* %32, i64 %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %11, align 8
  br label %27

42:                                               ; preds = %27
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @tref_isfunc(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %101, label %48

48:                                               ; preds = %42
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @copyTV(%struct.TYPE_12__* %55, i32* %56, i32* %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = load i32, i32* @MM_call, align 4
  %61 = call i32 @lj_record_mm_lookup(%struct.TYPE_10__* %59, %struct.TYPE_11__* %7, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @tref_isfunc(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63, %48
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = load i32, i32* @LJ_TRERR_NOMM, align 4
  %71 = call i32 @lj_trace_err(%struct.TYPE_10__* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %6, align 8
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %92, %72
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @LJ_FR2, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %75
  %80 = load i32*, i32** %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @LJ_FR2, align 8
  %83 = add i64 %81, %82
  %84 = sub i64 %83, 1
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* @LJ_FR2, align 8
  %90 = add i64 %88, %89
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %86, i32* %91, align 4
  br label %92

92:                                               ; preds = %79
  %93 = load i64, i64* %11, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %11, align 8
  br label %75

95:                                               ; preds = %75
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %97, i32* %99, align 4
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i32* %100, i32** %8, align 8
  br label %101

101:                                              ; preds = %95, %42
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @funcV(i32* %103)
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @rec_call_specialize(%struct.TYPE_10__* %102, i32 %104, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @TREF_FRAME, align 4
  %111 = or i32 %109, %110
  %112 = load i32*, i32** %10, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %111, i32* %113, align 4
  %114 = load i64, i64* %6, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  ret void
}

declare dso_local i32 @getslot(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @tref_isfunc(i32) #1

declare dso_local i32 @copyTV(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @lj_record_mm_lookup(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @rec_call_specialize(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @funcV(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
