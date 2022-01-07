; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_do_help.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_do_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32, i64 }
%struct.arg = type { i32 }
%struct.in_ev = type { i32 }

@COLOR_YELLOW = common dso_local global i32 0, align 4
@commands = common dso_local global %struct.command* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown command '%s'\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_help(%struct.command* %0, i32 %1, %struct.arg* %2, %struct.in_ev* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg*, align 8
  %8 = alloca %struct.in_ev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.command*, align 8
  store %struct.command* %0, %struct.command** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.arg* %2, %struct.arg** %7, align 8
  store %struct.in_ev* %3, %struct.in_ev** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %16 = icmp ne %struct.in_ev* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %19 = call i32 @mprint_start(%struct.in_ev* %18)
  br label %20

20:                                               ; preds = %17, %4
  store i32 0, i32* %9, align 4
  %21 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %22 = load i32, i32* @COLOR_YELLOW, align 4
  %23 = call i32 @mpush_color(%struct.in_ev* %21, i32 %22)
  %24 = load %struct.command*, %struct.command** @commands, align 8
  store %struct.command* %24, %struct.command** %10, align 8
  br label %25

25:                                               ; preds = %54, %20
  %26 = load %struct.command*, %struct.command** %10, align 8
  %27 = getelementptr inbounds %struct.command, %struct.command* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %25
  %31 = load %struct.arg*, %struct.arg** %7, align 8
  %32 = getelementptr inbounds %struct.arg, %struct.arg* %31, i64 0
  %33 = getelementptr inbounds %struct.arg, %struct.arg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.arg*, %struct.arg** %7, align 8
  %38 = getelementptr inbounds %struct.arg, %struct.arg* %37, i64 0
  %39 = getelementptr inbounds %struct.arg, %struct.arg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.command*, %struct.command** %10, align 8
  %42 = getelementptr inbounds %struct.command, %struct.command* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @strcmp(i32 %40, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %36, %30
  %47 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %48 = load %struct.command*, %struct.command** %10, align 8
  %49 = getelementptr inbounds %struct.command, %struct.command* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mprintf(%struct.in_ev* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %46, %36
  %55 = load %struct.command*, %struct.command** %10, align 8
  %56 = getelementptr inbounds %struct.command, %struct.command* %55, i32 1
  store %struct.command* %56, %struct.command** %10, align 8
  br label %25

57:                                               ; preds = %25
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 1
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %66 = load %struct.arg*, %struct.arg** %7, align 8
  %67 = getelementptr inbounds %struct.arg, %struct.arg* %66, i64 0
  %68 = getelementptr inbounds %struct.arg, %struct.arg* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @mprintf(%struct.in_ev* %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %60, %57
  %72 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %73 = call i32 @mpop_color(%struct.in_ev* %72)
  %74 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %75 = icmp ne %struct.in_ev* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %78 = call i32 @mprint_end(%struct.in_ev* %77)
  br label %79

79:                                               ; preds = %76, %71
  %80 = load %struct.in_ev*, %struct.in_ev** %8, align 8
  %81 = icmp ne %struct.in_ev* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @stdout, align 4
  %84 = call i32 @fflush(i32 %83)
  br label %85

85:                                               ; preds = %82, %79
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mprint_start(%struct.in_ev*) #1

declare dso_local i32 @mpush_color(%struct.in_ev*, i32) #1

declare dso_local i32 @strcmp(i32, i64) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*, i32) #1

declare dso_local i32 @mpop_color(%struct.in_ev*) #1

declare dso_local i32 @mprint_end(%struct.in_ev*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
