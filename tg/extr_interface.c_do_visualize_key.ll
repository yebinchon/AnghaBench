; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_visualize_key.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_visualize_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }
%struct.arg = type { i32 }
%struct.in_ev = type { i32 }

@do_visualize_key.colors = internal global [4 x i8*] [i8* inttoptr (i64 128 to i8*), i8* inttoptr (i64 130 to i8*), i8* inttoptr (i64 131 to i8*), i8* inttoptr (i64 129 to i8*)], align 16
@do_visualize_key.buf = internal global [16 x i8] zeroinitializer, align 16
@TLS = common dso_local global i32 0, align 4
@COLOR_INVERSE = common dso_local global i8* null, align 8
@disable_colors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_visualize_key(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg*, align 8
  %8 = alloca %struct.in_ev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.command* %0, %struct.command** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg* %2, %struct.arg** %7, align 8
  store %struct.in_ev* %3, %struct.in_ev** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 1
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = call i32 @memset(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @do_visualize_key.buf, i64 0, i64 0), i32 0, i32 16)
  %17 = load i32, i32* @TLS, align 4
  %18 = load %struct.arg*, %struct.arg** %7, align 8
  %19 = getelementptr inbounds %struct.arg, %struct.arg* %18, i64 0
  %20 = getelementptr inbounds %struct.arg, %struct.arg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @tgl_do_visualize_key(i32 %17, i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @do_visualize_key.buf, i64 0, i64 0))
  %23 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %24 = call i32 @mprint_start(%struct.in_ev* %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %98, %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 16
  br i1 %27, label %28, label %101

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* @do_visualize_key.buf, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  store i32 %33, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %87, %28
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %90

37:                                               ; preds = %34
  %38 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %39 = icmp ne %struct.in_ev* %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %37
  %41 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, 3
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i8*], [4 x i8*]* @do_visualize_key.colors, i64 0, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @mpush_color(%struct.in_ev* %41, i8* %46)
  %48 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %49 = load i8*, i8** @COLOR_INVERSE, align 8
  %50 = call i32 @mpush_color(%struct.in_ev* %48, i8* %49)
  br label %51

51:                                               ; preds = %40, %37
  %52 = load i32, i32* @disable_colors, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %56 = icmp ne %struct.in_ev* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %59 = call i32 @mprintf(%struct.in_ev* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %76

60:                                               ; preds = %54, %51
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 3
  switch i32 %62, label %75 [
    i32 0, label %63
    i32 1, label %66
    i32 2, label %69
    i32 3, label %72
  ]

63:                                               ; preds = %60
  %64 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %65 = call i32 @mprintf(%struct.in_ev* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %75

66:                                               ; preds = %60
  %67 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %68 = call i32 @mprintf(%struct.in_ev* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %75

69:                                               ; preds = %60
  %70 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %71 = call i32 @mprintf(%struct.in_ev* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %75

72:                                               ; preds = %60
  %73 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %74 = call i32 @mprintf(%struct.in_ev* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %60, %72, %69, %66, %63
  br label %76

76:                                               ; preds = %75, %57
  %77 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %78 = icmp ne %struct.in_ev* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %81 = call i32 @mpop_color(%struct.in_ev* %80)
  %82 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %83 = call i32 @mpop_color(%struct.in_ev* %82)
  br label %84

84:                                               ; preds = %79, %76
  %85 = load i32, i32* %10, align 4
  %86 = ashr i32 %85, 2
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %34

90:                                               ; preds = %34
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %96 = call i32 @mprintf(%struct.in_ev* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %90
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %25

101:                                              ; preds = %25
  %102 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %103 = call i32 @mprint_end(%struct.in_ev* %102)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @tgl_do_visualize_key(i32, i32, i8*) #1

declare dso_local i32 @mprint_start(%struct.in_ev*) #1

declare dso_local i32 @mpush_color(%struct.in_ev*, i8*) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*) #1

declare dso_local i32 @mpop_color(%struct.in_ev*) #1

declare dso_local i32 @mprint_end(%struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
