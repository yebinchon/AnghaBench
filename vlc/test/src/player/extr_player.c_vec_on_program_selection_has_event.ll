; ModuleID = '/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_vec_on_program_selection_has_event.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/player/extr_player.c_vec_on_program_selection_has_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.report_program_selection* }
%struct.report_program_selection = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i32, i32)* @vec_on_program_selection_has_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vec_on_program_selection_has_event(%struct.TYPE_3__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.report_program_selection, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp uge i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %12, align 8
  br label %22

22:                                               ; preds = %64, %4
  %23 = load i64, i64* %12, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.report_program_selection*, %struct.report_program_selection** %30, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds %struct.report_program_selection, %struct.report_program_selection* %31, i64 %32
  %34 = bitcast %struct.report_program_selection* %13 to i8*
  %35 = bitcast %struct.report_program_selection* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 8, i1 false)
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %49

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.report_program_selection, %struct.report_program_selection* %13, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %43, %38, %28
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.report_program_selection, %struct.report_program_selection* %13, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %57, %52, %49
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %12, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %12, align 8
  br label %22

67:                                               ; preds = %22
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi i1 [ false, %73 ], [ %78, %76 ]
  %81 = zext i1 %80 to i32
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %5, align 8
  br label %106

83:                                               ; preds = %70, %67
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %5, align 8
  br label %106

94:                                               ; preds = %83
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, -1
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %94, %86, %79
  %107 = load i64, i64* %5, align 8
  ret i64 %107
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
