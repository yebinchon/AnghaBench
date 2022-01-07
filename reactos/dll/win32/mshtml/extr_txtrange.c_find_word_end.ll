; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_find_word_end.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_find_word_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @find_word_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_word_end(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @init_rangepoint(%struct.TYPE_9__* %6, i32 %15, i32 %18)
  %20 = call signext i8 @move_prev_char(%struct.TYPE_9__* %6)
  store i8 %20, i8* %7, align 1
  %21 = call i32 @free_rangepoint(%struct.TYPE_9__* %6)
  %22 = load i8, i8* %7, align 1
  %23 = call i64 @isspaceW(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %79

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27, %2
  br label %29

29:                                               ; preds = %75, %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @init_rangepoint(%struct.TYPE_9__* %6, i32 %32, i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = call signext i8 @move_next_char(%struct.TYPE_9__* %37)
  store i8 %38, i8* %7, align 1
  %39 = load i8, i8* %7, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %49

42:                                               ; preds = %29
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = call i32 @free_rangepoint(%struct.TYPE_9__* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = bitcast %struct.TYPE_9__* %45 to i8*
  %47 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 8, i1 false)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %79

49:                                               ; preds = %29
  %50 = load i8, i8* %7, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = call i32 @rangepoint_cmp(%struct.TYPE_9__* %56, %struct.TYPE_9__* %6)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %55, %52
  br label %64

62:                                               ; preds = %49
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %62, %61
  %65 = call i32 @free_rangepoint(%struct.TYPE_9__* %6)
  br label %66

66:                                               ; preds = %64
  %67 = load i8, i8* %7, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i8, i8* %7, align 1
  %72 = call i64 @isspaceW(i8 signext %71)
  %73 = icmp ne i64 %72, 0
  %74 = xor i1 %73, true
  br label %75

75:                                               ; preds = %70, %66
  %76 = phi i1 [ false, %66 ], [ %74, %70 ]
  br i1 %76, label %29, label %77

77:                                               ; preds = %75
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %42, %25
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @init_rangepoint(%struct.TYPE_9__*, i32, i32) #1

declare dso_local signext i8 @move_prev_char(%struct.TYPE_9__*) #1

declare dso_local i32 @free_rangepoint(%struct.TYPE_9__*) #1

declare dso_local i64 @isspaceW(i8 signext) #1

declare dso_local signext i8 @move_next_char(%struct.TYPE_9__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rangepoint_cmp(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
