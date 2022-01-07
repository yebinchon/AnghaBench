; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_rec_call_setup.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_rec_call_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@LJ_FR2 = common dso_local global i32 0, align 4
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
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32* %17, i32** %8, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %9, align 8
  %23 = load i32, i32* @LJ_FR2, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @lua_assert(i32 %26)
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %38, %3
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ule i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %34, %35
  %37 = call i32 @getslot(%struct.TYPE_10__* %33, i64 %36)
  br label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %10, align 8
  br label %28

41:                                               ; preds = %28
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @tref_isfunc(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %95, label %47

47:                                               ; preds = %41
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @copyTV(%struct.TYPE_12__* %54, i32* %55, i32* %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = load i32, i32* @MM_call, align 4
  %60 = call i32 @lj_record_mm_lookup(%struct.TYPE_10__* %58, %struct.TYPE_11__* %7, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %47
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @tref_isfunc(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62, %47
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = load i32, i32* @LJ_TRERR_NOMM, align 4
  %70 = call i32 @lj_trace_err(%struct.TYPE_10__* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %6, align 8
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %86, %71
  %75 = load i64, i64* %10, align 8
  %76 = icmp ugt i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load i32*, i32** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = sub i64 %79, 1
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %77
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %87, -1
  store i64 %88, i64* %10, align 8
  br label %74

89:                                               ; preds = %74
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %91, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i32* %94, i32** %8, align 8
  br label %95

95:                                               ; preds = %89, %41
  %96 = load i32, i32* @TREF_FRAME, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @funcV(i32* %98)
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @rec_call_specialize(%struct.TYPE_10__* %97, i32 %99, i32 %102)
  %104 = or i32 %96, %103
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %104, i32* %106, align 4
  %107 = load i64, i64* %6, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

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
