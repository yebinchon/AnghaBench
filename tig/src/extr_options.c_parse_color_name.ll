; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_parse_color_name.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_parse_color_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_rule = type { i8*, i8*, i8*, i8* }
%struct.keymap = type { i8* }

@.str = private unnamed_addr constant [22 x i8] c"Unknown key map: %.*s\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.line_rule*, i8**)* @parse_color_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_color_name(i8* %0, %struct.line_rule* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.line_rule*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.keymap*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.line_rule* %1, %struct.line_rule** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = call i64 @is_quoted(i8 signext %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 46)
  br label %18

18:                                               ; preds = %15, %14
  %19 = phi i8* [ null, %14 ], [ %17, %15 ]
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %53

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = call %struct.keymap* @get_keymap(i8* %23, i32 %29)
  store %struct.keymap* %30, %struct.keymap** %9, align 8
  %31 = load %struct.keymap*, %struct.keymap** %9, align 8
  %32 = icmp ne %struct.keymap* %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %22
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %39, i8* %40)
  store i32 %41, i32* %4, align 4
  br label %80

42:                                               ; preds = %22
  %43 = load i8**, i8*** %7, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.keymap*, %struct.keymap** %9, align 8
  %47 = getelementptr inbounds %struct.keymap, %struct.keymap* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8**, i8*** %7, align 8
  store i8* %48, i8** %49, align 8
  br label %50

50:                                               ; preds = %45, %42
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8* %52, i8** %5, align 8
  br label %53

53:                                               ; preds = %50, %18
  %54 = load %struct.line_rule*, %struct.line_rule** %6, align 8
  %55 = call i32 @memset(%struct.line_rule* %54, i32 0, i32 32)
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @is_quoted(i8 signext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load %struct.line_rule*, %struct.line_rule** %6, align 8
  %64 = getelementptr inbounds %struct.line_rule, %struct.line_rule* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i8* @strlen(i8* %65)
  %67 = getelementptr i8, i8* %66, i64 -2
  %68 = load %struct.line_rule*, %struct.line_rule** %6, align 8
  %69 = getelementptr inbounds %struct.line_rule, %struct.line_rule* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  br label %78

70:                                               ; preds = %53
  %71 = load i8*, i8** %5, align 8
  %72 = load %struct.line_rule*, %struct.line_rule** %6, align 8
  %73 = getelementptr inbounds %struct.line_rule, %struct.line_rule* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = call i8* @strlen(i8* %74)
  %76 = load %struct.line_rule*, %struct.line_rule** %6, align 8
  %77 = getelementptr inbounds %struct.line_rule, %struct.line_rule* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %70, %60
  %79 = load i32, i32* @SUCCESS, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %33
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @is_quoted(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.keymap* @get_keymap(i8*, i32) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @memset(%struct.line_rule*, i32, i32) #1

declare dso_local i8* @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
