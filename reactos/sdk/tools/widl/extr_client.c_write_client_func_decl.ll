; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_client.c_write_client_func_decl.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_client.c_write_client_func_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@ATTR_CALLCONV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"__cdecl\00", align 1
@client = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%s(\0A\00", align 1
@prefix_client = common dso_local global i8* null, align 8
@indent = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*)* @write_client_func_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_client_func_decl(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ATTR_CALLCONV, align 4
  %14 = call i8* @get_attrp(i32 %12, i32 %13)
  store i8* %14, i8** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = call i32* @type_get_function_args(%struct.TYPE_12__* %17)
  store i32* %18, i32** %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = call %struct.TYPE_11__* @type_function_get_rettype(%struct.TYPE_12__* %21)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* @client, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = call i32 @write_type_decl_left(i32 %27, %struct.TYPE_11__* %28)
  %30 = load i32, i32* @client, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @client, align 4
  %34 = load i8*, i8** @prefix_client, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = call i32 @get_name(%struct.TYPE_10__* %35)
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %34, i32 %36)
  %38 = load i32, i32* @indent, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @indent, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %26
  %43 = load i32, i32* @client, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TRUE, align 4
  %49 = call i32 @write_args(i32 %43, i32* %44, i32 %47, i32 0, i32 %48)
  br label %52

50:                                               ; preds = %26
  %51 = call i32 @print_client(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %42
  %53 = load i32, i32* @client, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32, i32* @indent, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* @indent, align 4
  ret void
}

declare dso_local i8* @get_attrp(i32, i32) #1

declare dso_local i32* @type_get_function_args(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @type_function_get_rettype(%struct.TYPE_12__*) #1

declare dso_local i32 @write_type_decl_left(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @get_name(%struct.TYPE_10__*) #1

declare dso_local i32 @write_args(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @print_client(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
