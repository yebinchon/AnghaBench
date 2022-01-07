; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tig.c_key_combo_handler.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tig.c_key_combo_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input = type { i32, %struct.key_combo* }
%struct.key_combo = type { i64, i64, %struct.key*, i32, i64 }
%struct.key = type { i32 }

@KEY_ESC = common dso_local global i64 0, align 8
@INPUT_CANCEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Keys: \00", align 1
@REQ_UNKNOWN = common dso_local global i64 0, align 8
@INPUT_OK = common dso_local global i32 0, align 4
@INPUT_STOP = common dso_local global i32 0, align 4
@KEY_MOUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input*, %struct.key*)* @key_combo_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_combo_handler(%struct.input* %0, %struct.key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca %struct.key_combo*, align 8
  %7 = alloca i32, align 4
  store %struct.input* %0, %struct.input** %4, align 8
  store %struct.key* %1, %struct.key** %5, align 8
  %8 = load %struct.input*, %struct.input** %4, align 8
  %9 = getelementptr inbounds %struct.input, %struct.input* %8, i32 0, i32 1
  %10 = load %struct.key_combo*, %struct.key_combo** %9, align 8
  store %struct.key_combo* %10, %struct.key_combo** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.key_combo*, %struct.key_combo** %6, align 8
  %12 = getelementptr inbounds %struct.key_combo, %struct.key_combo* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.key*, %struct.key** %5, align 8
  %17 = call i64 @key_to_value(%struct.key* %16)
  %18 = load i64, i64* @KEY_ESC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @INPUT_CANCEL, align 4
  store i32 %21, i32* %3, align 4
  br label %76

22:                                               ; preds = %15, %2
  %23 = load %struct.input*, %struct.input** %4, align 8
  %24 = getelementptr inbounds %struct.input, %struct.input* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.key_combo*, %struct.key_combo** %6, align 8
  %27 = getelementptr inbounds %struct.key_combo, %struct.key_combo* %26, i32 0, i32 4
  %28 = load %struct.key_combo*, %struct.key_combo** %6, align 8
  %29 = getelementptr inbounds %struct.key_combo, %struct.key_combo* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %34 = load %struct.key*, %struct.key** %5, align 8
  %35 = call i32 @get_key_name(%struct.key* %34, i32 1, i32 0)
  %36 = call i32 @string_format_from(i32 %25, i64* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %35)
  %37 = load %struct.key_combo*, %struct.key_combo** %6, align 8
  %38 = getelementptr inbounds %struct.key_combo, %struct.key_combo* %37, i32 0, i32 2
  %39 = load %struct.key*, %struct.key** %38, align 8
  %40 = load %struct.key_combo*, %struct.key_combo** %6, align 8
  %41 = getelementptr inbounds %struct.key_combo, %struct.key_combo* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = getelementptr inbounds %struct.key, %struct.key* %39, i64 %42
  %45 = load %struct.key*, %struct.key** %5, align 8
  %46 = bitcast %struct.key* %44 to i8*
  %47 = bitcast %struct.key* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = load %struct.key_combo*, %struct.key_combo** %6, align 8
  %49 = getelementptr inbounds %struct.key_combo, %struct.key_combo* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.key_combo*, %struct.key_combo** %6, align 8
  %52 = getelementptr inbounds %struct.key_combo, %struct.key_combo* %51, i32 0, i32 2
  %53 = load %struct.key*, %struct.key** %52, align 8
  %54 = load %struct.key_combo*, %struct.key_combo** %6, align 8
  %55 = getelementptr inbounds %struct.key_combo, %struct.key_combo* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @get_keybinding(i32 %50, %struct.key* %53, i64 %56, i32* %7)
  %58 = load %struct.key_combo*, %struct.key_combo** %6, align 8
  %59 = getelementptr inbounds %struct.key_combo, %struct.key_combo* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.key_combo*, %struct.key_combo** %6, align 8
  %61 = getelementptr inbounds %struct.key_combo, %struct.key_combo* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @REQ_UNKNOWN, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %22
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @INPUT_OK, align 4
  br label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @INPUT_STOP, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %3, align 4
  br label %76

74:                                               ; preds = %22
  %75 = load i32, i32* @INPUT_STOP, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %72, %20
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @key_to_value(%struct.key*) #1

declare dso_local i32 @string_format_from(i32, i64*, i8*, i8*, i32) #1

declare dso_local i32 @get_key_name(%struct.key*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @get_keybinding(i32, %struct.key*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
