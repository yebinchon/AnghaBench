; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_fs_prep_var.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_fs_prep_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { i64, i64*, i32 }
%struct.TYPE_12__ = type { i64 }

@VARNAME__MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, %struct.TYPE_13__*, i64*)* @fs_prep_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fs_prep_var(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i64* %2, i64** %6, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %7, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = call i32 @lj_buf_reset(i32* %23)
  store i64 0, i64* %9, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %61, %3
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %28
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.TYPE_12__* @strref(i32 %42)
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %12, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %13, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i64, i64* %13, align 8
  %51 = call i8* @lj_buf_more(i32* %49, i64 %50)
  store i8* %51, i8** %14, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %54 = call i32 @strdata(%struct.TYPE_12__* %53)
  %55 = load i64, i64* %13, align 8
  %56 = call i8* @lj_buf_wmem(i8* %52, i32 %54, i64 %55)
  store i8* %56, i8** %14, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @setsbufP(i32* %58, i8* %59)
  br label %61

61:                                               ; preds = %32
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %9, align 8
  br label %28

64:                                               ; preds = %28
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = call i64 @sbuflen(i32* %66)
  %68 = load i64*, i64** %6, align 8
  store i64 %67, i64* %68, align 8
  store i64 0, i64* %11, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %73
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %8, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 %79
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %7, align 8
  br label %81

81:                                               ; preds = %144, %64
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = icmp ult %struct.TYPE_10__* %82, %83
  br i1 %84, label %85, label %147

85:                                               ; preds = %81
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = call i32 @gola_isgotolabel(%struct.TYPE_10__* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %143, label %89

89:                                               ; preds = %85
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.TYPE_12__* @strref(i32 %92)
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %15, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %95 = ptrtoint %struct.TYPE_12__* %94 to i64
  %96 = load i64, i64* @VARNAME__MAX, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %89
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = call i8* @lj_buf_more(i32* %100, i64 11)
  store i8* %101, i8** %17, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %103 = ptrtoint %struct.TYPE_12__* %102 to i64
  %104 = trunc i64 %103 to i8
  %105 = load i8*, i8** %17, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %17, align 8
  store i8 %104, i8* %105, align 1
  br label %122

107:                                              ; preds = %89
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %18, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i64, i64* %18, align 8
  %115 = add i64 %114, 10
  %116 = call i8* @lj_buf_more(i32* %113, i64 %115)
  store i8* %116, i8** %17, align 8
  %117 = load i8*, i8** %17, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %119 = call i32 @strdata(%struct.TYPE_12__* %118)
  %120 = load i64, i64* %18, align 8
  %121 = call i8* @lj_buf_wmem(i8* %117, i32 %119, i64 %120)
  store i8* %121, i8** %17, align 8
  br label %122

122:                                              ; preds = %107, %98
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %16, align 8
  %126 = load i8*, i8** %17, align 8
  %127 = load i64, i64* %16, align 8
  %128 = load i64, i64* %11, align 8
  %129 = sub nsw i64 %127, %128
  %130 = call i8* @lj_strfmt_wuleb128(i8* %126, i64 %129)
  store i8* %130, i8** %17, align 8
  %131 = load i8*, i8** %17, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %16, align 8
  %136 = sub nsw i64 %134, %135
  %137 = call i8* @lj_strfmt_wuleb128(i8* %131, i64 %136)
  store i8* %137, i8** %17, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i8*, i8** %17, align 8
  %141 = call i32 @setsbufP(i32* %139, i8* %140)
  %142 = load i64, i64* %16, align 8
  store i64 %142, i64* %11, align 8
  br label %143

143:                                              ; preds = %122, %85
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 1
  store %struct.TYPE_10__* %146, %struct.TYPE_10__** %7, align 8
  br label %81

147:                                              ; preds = %81
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = call i32 @lj_buf_putb(i32* %149, i8 signext 0)
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = call i64 @sbuflen(i32* %152)
  ret i64 %153
}

declare dso_local i32 @lj_buf_reset(i32*) #1

declare dso_local %struct.TYPE_12__* @strref(i32) #1

declare dso_local i8* @lj_buf_more(i32*, i64) #1

declare dso_local i8* @lj_buf_wmem(i8*, i32, i64) #1

declare dso_local i32 @strdata(%struct.TYPE_12__*) #1

declare dso_local i32 @setsbufP(i32*, i8*) #1

declare dso_local i64 @sbuflen(i32*) #1

declare dso_local i32 @gola_isgotolabel(%struct.TYPE_10__*) #1

declare dso_local i8* @lj_strfmt_wuleb128(i8*, i64) #1

declare dso_local i32 @lj_buf_putb(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
