; ModuleID = '/home/carl/AnghaBench/tmux/extr_attributes.c_attributes_tostring.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_attributes.c_attributes_tostring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@attributes_tostring.buf = internal global [512 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s%s%s%s%s%s%s%s%s%s%s%s%s\00", align 1
@GRID_ATTR_BRIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"bright,\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GRID_ATTR_DIM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"dim,\00", align 1
@GRID_ATTR_UNDERSCORE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"underscore,\00", align 1
@GRID_ATTR_BLINK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"blink,\00", align 1
@GRID_ATTR_REVERSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"reverse,\00", align 1
@GRID_ATTR_HIDDEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"hidden,\00", align 1
@GRID_ATTR_ITALICS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"italics,\00", align 1
@GRID_ATTR_STRIKETHROUGH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"strikethrough,\00", align 1
@GRID_ATTR_UNDERSCORE_2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"double-underscore,\00", align 1
@GRID_ATTR_UNDERSCORE_3 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"curly-underscore,\00", align 1
@GRID_ATTR_UNDERSCORE_4 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"dotted-underscore,\00", align 1
@GRID_ATTR_UNDERSCORE_5 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"dashed-underscore,\00", align 1
@GRID_ATTR_OVERLINE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"overline,\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @attributes_tostring(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %95

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @GRID_ATTR_BRIGHT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @GRID_ATTR_DIM, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @GRID_ATTR_UNDERSCORE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @GRID_ATTR_BLINK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @GRID_ATTR_REVERSE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @GRID_ATTR_HIDDEN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @GRID_ATTR_ITALICS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @GRID_ATTR_STRIKETHROUGH, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @GRID_ATTR_UNDERSCORE_2, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @GRID_ATTR_UNDERSCORE_3, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @GRID_ATTR_UNDERSCORE_4, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @GRID_ATTR_UNDERSCORE_5, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @GRID_ATTR_OVERLINE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %87 = call i64 @xsnprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @attributes_tostring.buf, i64 0, i64 0), i32 512, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %14, i8* %20, i8* %26, i8* %32, i8* %38, i8* %44, i8* %50, i8* %56, i8* %62, i8* %68, i8* %74, i8* %80, i8* %86)
  store i64 %87, i64* %4, align 8
  %88 = load i64, i64* %4, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %8
  %91 = load i64, i64* %4, align 8
  %92 = sub i64 %91, 1
  %93 = getelementptr inbounds [512 x i8], [512 x i8]* @attributes_tostring.buf, i64 0, i64 %92
  store i8 0, i8* %93, align 1
  br label %94

94:                                               ; preds = %90, %8
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @attributes_tostring.buf, i64 0, i64 0), i8** %2, align 8
  br label %95

95:                                               ; preds = %94, %7
  %96 = load i8*, i8** %2, align 8
  ret i8* %96
}

declare dso_local i64 @xsnprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
