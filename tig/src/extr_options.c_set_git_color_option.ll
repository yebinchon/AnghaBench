; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_set_git_color_option.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_set_git_color_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_info = type { i32, i32, i32, i32 }
%struct.line_rule = type { i32 }

@opt_git_colors = common dso_local global i8** null, align 8
@SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @set_git_color_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_git_color_option(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.line_info, align 4
  %6 = alloca %struct.line_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.line_rule, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.line_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = bitcast %struct.line_info* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  store %struct.line_info* null, %struct.line_info** %6, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %7, align 8
  %17 = load i8**, i8*** @opt_git_colors, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %91

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %88, %20
  %22 = load i8**, i8*** @opt_git_colors, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %91

28:                                               ; preds = %21
  %29 = bitcast %struct.line_rule* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 4, i1 false)
  store i8* null, i8** %10, align 8
  %30 = load i8**, i8*** @opt_git_colors, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 61)
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %28
  %40 = load i64, i64* %7, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = icmp ne i64 %40, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = load i8*, i8** %3, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @string_enum_compare(i8* %48, i8* %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %39, %28
  br label %88

54:                                               ; preds = %47
  %55 = load %struct.line_info*, %struct.line_info** %6, align 8
  %56 = icmp ne %struct.line_info* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %4, align 8
  %59 = call %struct.line_info* @parse_git_color_option(%struct.line_info* %5, i8* %58)
  store %struct.line_info* %59, %struct.line_info** %6, align 8
  %60 = load %struct.line_info*, %struct.line_info** %6, align 8
  %61 = icmp ne %struct.line_info* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %91

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %54
  %65 = load i8*, i8** %13, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = call i64 @parse_color_name(i8* %66, %struct.line_rule* %9, i8** %10)
  %68 = load i64, i64* @SUCCESS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  %71 = load i8*, i8** %10, align 8
  %72 = call %struct.line_info* @add_line_rule(i8* %71, %struct.line_rule* %9)
  store %struct.line_info* %72, %struct.line_info** %11, align 8
  %73 = icmp ne %struct.line_info* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.line_info, %struct.line_info* %5, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.line_info*, %struct.line_info** %11, align 8
  %78 = getelementptr inbounds %struct.line_info, %struct.line_info* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = getelementptr inbounds %struct.line_info, %struct.line_info* %5, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.line_info*, %struct.line_info** %11, align 8
  %82 = getelementptr inbounds %struct.line_info, %struct.line_info* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = getelementptr inbounds %struct.line_info, %struct.line_info* %5, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.line_info*, %struct.line_info** %11, align 8
  %86 = getelementptr inbounds %struct.line_info, %struct.line_info* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %74, %70, %64
  br label %88

88:                                               ; preds = %87, %53
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %21

91:                                               ; preds = %19, %62, %21
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @string_enum_compare(i8*, i8*, i64) #2

declare dso_local %struct.line_info* @parse_git_color_option(%struct.line_info*, i8*) #2

declare dso_local i64 @parse_color_name(i8*, %struct.line_rule*, i8**) #2

declare dso_local %struct.line_info* @add_line_rule(i8*, %struct.line_rule*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
