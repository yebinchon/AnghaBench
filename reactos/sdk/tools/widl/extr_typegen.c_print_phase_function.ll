; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_print_phase_function.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_print_phase_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"BufferSize\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Marshall\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Unmarshall\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Free\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Ndr%s%s(\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"&__frame->_StubMsg,\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%s%s%s%s%s,\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"(unsigned char **)\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"(unsigned char *)\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"_p_\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"(PFORMAT_STRING)&__MIDL_TypeFormatString.Format[%d]%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c");\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"0);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i8*, i32, %struct.TYPE_3__*, i32)* @print_phase_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_phase_function(i32* %0, i32 %1, i8* %2, i8* %3, i32 %4, %struct.TYPE_3__* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %12, align 4
  switch i32 %16, label %21 [
    i32 131, label %17
    i32 129, label %18
    i32 128, label %19
    i32 130, label %20
  ]

17:                                               ; preds = %7
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %23

18:                                               ; preds = %7
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %23

19:                                               ; preds = %7
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  br label %23

20:                                               ; preds = %7
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %23

21:                                               ; preds = %7
  %22 = call i32 @assert(i32 0)
  br label %86

23:                                               ; preds = %20, %19, %18, %17
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %24, i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %26, i8* %27)
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %31, i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 128
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0)
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %48, label %42

42:                                               ; preds = %23
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @decl_indirect(i32 %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %42, %23
  %49 = phi i1 [ true, %23 ], [ %47, %42 ]
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @decl_indirect(i32 %58)
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %55, %48
  %62 = phi i1 [ false, %48 ], [ %60, %55 ]
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %34, i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %39, i8* %51, i8* %52, i8* %64, i32 %67)
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %72, 128
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)
  %76 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %69, i32 %70, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 %71, i8* %75)
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, 128
  br i1 %78, label %79, label %83

79:                                               ; preds = %61
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (i32*, i32, i8*, ...) @print_file(i32* %80, i32 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79, %61
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %83, %21
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @print_file(i32*, i32, i8*, ...) #1

declare dso_local i64 @decl_indirect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
