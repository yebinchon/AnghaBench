; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_parser.c_get_loc_data_line.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_parser.c_get_loc_data_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@space = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"syntax error: '%s'\00", align 1
@LC_LOCALE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @get_loc_data_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_loc_data_line(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %1
  br label %77

15:                                               ; preds = %8
  %16 = load i8*, i8** %2, align 8
  %17 = load i8*, i8** @space, align 8
  %18 = call i64 @strspn(i8* %16, i8* %17)
  store i64 %18, i64* %3, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %3, align 8
  %22 = getelementptr inbounds i8, i8* %19, i64 %20
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %5, align 1
  %24 = load i8, i8* %5, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 35
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %77

28:                                               ; preds = %15
  %29 = load i8, i8* %5, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %2, align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8*, i8** @space, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %37, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %32
  %44 = load i8*, i8** %2, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8*, i8** @space, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %48, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %43, %28
  %55 = load i8*, i8** %2, align 8
  %56 = call i32 @luprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %55)
  br label %77

57:                                               ; preds = %43, %32
  %58 = load i8, i8* %5, align 1
  %59 = load i8*, i8** %2, align 8
  %60 = load i64, i64* %3, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = call %struct.TYPE_5__* @get_loc_cmd(i8 signext %58, i8* %61)
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %4, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = icmp ne %struct.TYPE_5__* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LC_LOCALE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = call i32 @dispatch_loc_cmd(%struct.TYPE_5__* %72)
  br label %77

74:                                               ; preds = %65, %57
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = call i32 @free_loc_cmd(%struct.TYPE_5__* %75)
  br label %77

77:                                               ; preds = %14, %27, %54, %74, %71
  ret void
}

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @luprintf(i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @get_loc_cmd(i8 signext, i8*) #1

declare dso_local i32 @dispatch_loc_cmd(%struct.TYPE_5__*) #1

declare dso_local i32 @free_loc_cmd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
