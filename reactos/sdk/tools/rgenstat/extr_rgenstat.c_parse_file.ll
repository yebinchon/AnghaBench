; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rgenstat/extr_rgenstat.c_parse_file.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rgenstat/extr_rgenstat.c_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, %struct.TYPE_4__*, i32 }

@TAG_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Warning: empty function name in file %s. Previous function name was %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@api_info_list = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @parse_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_file(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca [200 x i8], align 16
  %9 = alloca [200 x i8], align 16
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @read_file(i8* %11)
  %13 = getelementptr inbounds [200 x i8], [200 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %13, align 16
  br label %14

14:                                               ; preds = %63, %3
  %15 = call i32 (...) @skip_to_next_tag()
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @TAG_UNKNOWN, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %64

20:                                               ; preds = %14
  %21 = call i32 (...) @skip_comments()
  %22 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %23 = call i64 @skip_to_next_name(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %20
  %26 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %27 = call i64 @strlen(i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds [200 x i8], [200 x i8]* %8, i64 0, i64 0
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = call %struct.TYPE_4__* @malloc(i32 4)
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %7, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = icmp eq %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %48 = call i32 @strcpy(i8* %46, i8* %47)
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @get_filename(i8* %49, i8* %50, i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @api_info_list, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** @api_info_list, align 8
  %59 = getelementptr inbounds [200 x i8], [200 x i8]* %8, i64 0, i64 0
  %60 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %61 = call i32 @strcpy(i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %40, %20
  br label %63

63:                                               ; preds = %62
  br i1 true, label %14, label %64

64:                                               ; preds = %63, %19
  %65 = call i32 (...) @close_file()
  ret void
}

declare dso_local i32 @read_file(i8*) #1

declare dso_local i32 @skip_to_next_tag(...) #1

declare dso_local i32 @skip_comments(...) #1

declare dso_local i64 @skip_to_next_name(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @get_filename(i8*, i8*, i32) #1

declare dso_local i32 @close_file(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
