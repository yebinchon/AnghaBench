; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_threeway_diff_files.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_threeway_diff_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32** }

@DIFF_TYPE_COMMITS = common dso_local global i32 0, align 4
@DIFF_STATUS_MODIFIED = common dso_local global i32 0, align 4
@DIFF_STATUS_DELETED = common dso_local global i32 0, align 4
@DIFF_STATUS_ADDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32**, i8*)* @threeway_diff_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @threeway_diff_files(i32 %0, i8* %1, i32** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %9, align 8
  %17 = load i32**, i32*** %7, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i32**, i32*** %7, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  %23 = load i32**, i32*** %7, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %12, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  store i32** %28, i32*** %13, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %4
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load i32*, i32** %12, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @dirent_same(i32* %38, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %37
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @dirent_same(i32* %43, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @DIFF_TYPE_COMMITS, align 4
  %49 = load i32, i32* @DIFF_STATUS_MODIFIED, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32* @diff_entry_new_from_dirent(i32 %48, i32 %49, i32* %50, i8* %51)
  store i32* %52, i32** %14, align 8
  %53 = load i32**, i32*** %13, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = call i32* @g_list_prepend(i32* %54, i32* %55)
  %57 = load i32**, i32*** %13, align 8
  store i32* %56, i32** %57, align 8
  br label %58

58:                                               ; preds = %47, %42, %37
  br label %155

59:                                               ; preds = %34, %31, %4
  %60 = load i32*, i32** %10, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %79, label %62

62:                                               ; preds = %59
  %63 = load i32*, i32** %11, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load i32*, i32** %12, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32, i32* @DIFF_TYPE_COMMITS, align 4
  %70 = load i32, i32* @DIFF_STATUS_DELETED, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32* @diff_entry_new_from_dirent(i32 %69, i32 %70, i32* %71, i8* %72)
  store i32* %73, i32** %14, align 8
  %74 = load i32**, i32*** %13, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = call i32* @g_list_prepend(i32* %75, i32* %76)
  %78 = load i32**, i32*** %13, align 8
  store i32* %77, i32** %78, align 8
  br label %154

79:                                               ; preds = %65, %62, %59
  %80 = load i32*, i32** %10, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %105

82:                                               ; preds = %79
  %83 = load i32*, i32** %11, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %105, label %85

85:                                               ; preds = %82
  %86 = load i32*, i32** %12, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = load i32*, i32** %10, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @dirent_same(i32* %89, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @DIFF_TYPE_COMMITS, align 4
  %95 = load i32, i32* @DIFF_STATUS_MODIFIED, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i32* @diff_entry_new_from_dirent(i32 %94, i32 %95, i32* %96, i8* %97)
  store i32* %98, i32** %14, align 8
  %99 = load i32**, i32*** %13, align 8
  %100 = load i32*, i32** %99, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = call i32* @g_list_prepend(i32* %100, i32* %101)
  %103 = load i32**, i32*** %13, align 8
  store i32* %102, i32** %103, align 8
  br label %104

104:                                              ; preds = %93, %88
  br label %153

105:                                              ; preds = %85, %82, %79
  %106 = load i32*, i32** %10, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %131

108:                                              ; preds = %105
  %109 = load i32*, i32** %11, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %131

111:                                              ; preds = %108
  %112 = load i32*, i32** %12, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %131, label %114

114:                                              ; preds = %111
  %115 = load i32*, i32** %10, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = call i32 @dirent_same(i32* %115, i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* @DIFF_TYPE_COMMITS, align 4
  %121 = load i32, i32* @DIFF_STATUS_MODIFIED, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = call i32* @diff_entry_new_from_dirent(i32 %120, i32 %121, i32* %122, i8* %123)
  store i32* %124, i32** %14, align 8
  %125 = load i32**, i32*** %13, align 8
  %126 = load i32*, i32** %125, align 8
  %127 = load i32*, i32** %14, align 8
  %128 = call i32* @g_list_prepend(i32* %126, i32* %127)
  %129 = load i32**, i32*** %13, align 8
  store i32* %128, i32** %129, align 8
  br label %130

130:                                              ; preds = %119, %114
  br label %152

131:                                              ; preds = %111, %108, %105
  %132 = load i32*, i32** %10, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %151

134:                                              ; preds = %131
  %135 = load i32*, i32** %11, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %151, label %137

137:                                              ; preds = %134
  %138 = load i32*, i32** %12, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %151, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* @DIFF_TYPE_COMMITS, align 4
  %142 = load i32, i32* @DIFF_STATUS_ADDED, align 4
  %143 = load i32*, i32** %10, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = call i32* @diff_entry_new_from_dirent(i32 %141, i32 %142, i32* %143, i8* %144)
  store i32* %145, i32** %14, align 8
  %146 = load i32**, i32*** %13, align 8
  %147 = load i32*, i32** %146, align 8
  %148 = load i32*, i32** %14, align 8
  %149 = call i32* @g_list_prepend(i32* %147, i32* %148)
  %150 = load i32**, i32*** %13, align 8
  store i32* %149, i32** %150, align 8
  br label %151

151:                                              ; preds = %140, %137, %134, %131
  br label %152

152:                                              ; preds = %151, %130
  br label %153

153:                                              ; preds = %152, %104
  br label %154

154:                                              ; preds = %153, %68
  br label %155

155:                                              ; preds = %154, %58
  ret i32 0
}

declare dso_local i32 @dirent_same(i32*, i32*) #1

declare dso_local i32* @diff_entry_new_from_dirent(i32, i32, i32*, i8*) #1

declare dso_local i32* @g_list_prepend(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
