; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_invert_matches.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_invert_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Inverting %u matches.\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Inverted match %i start %i end %i.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @invert_matches(i8* %0, i64 %1, %struct.TYPE_3__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %15, align 4
  %18 = load i64, i64* %9, align 8
  %19 = call i32 (i8*, i64, ...) @log_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %9, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = bitcast %struct.TYPE_3__* %16 to i8*
  %26 = bitcast %struct.TYPE_3__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  br label %31

27:                                               ; preds = %4
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %7, align 8
  %39 = sub i64 %38, 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i64 %39, i64* %42, align 8
  store i64 1, i64* %5, align 8
  br label %157

43:                                               ; preds = %31
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %131, %43
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %134

48:                                               ; preds = %44
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %91

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, 1
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %64
  %66 = bitcast %struct.TYPE_3__* %16 to i8*
  %67 = bitcast %struct.TYPE_3__* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 16, i1 false)
  br label %68

68:                                               ; preds = %62, %53
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i64 %76, i64* %80, align 8
  %81 = load i64, i64* %14, align 8
  %82 = sub i64 %81, 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i64 %82, i64* %86, align 8
  %87 = load i64, i64* %12, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %12, align 8
  br label %89

89:                                               ; preds = %75, %71, %68
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %15, align 4
  br label %130

91:                                               ; preds = %48
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %7, align 8
  %94 = sub i64 %93, 1
  %95 = icmp eq i64 %92, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load i64, i64* %13, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %102 = load i64, i64* %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i64 %100, i64* %104, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %107 = load i64, i64* %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i64 %105, i64* %109, align 8
  %110 = load i64, i64* %12, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %12, align 8
  br label %129

112:                                              ; preds = %96, %91
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %10, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 10
  br i1 %118, label %119, label %128

119:                                              ; preds = %112
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %14, align 8
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %119
  %125 = load i64, i64* %14, align 8
  store i64 %125, i64* %13, align 8
  br label %126

126:                                              ; preds = %124, %119
  %127 = load i32, i32* @TRUE, align 4
  store i32 %127, i32* %15, align 4
  br label %128

128:                                              ; preds = %126, %112
  br label %129

129:                                              ; preds = %128, %99
  br label %130

130:                                              ; preds = %129, %89
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %10, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %10, align 8
  br label %44

134:                                              ; preds = %44
  store i64 0, i64* %10, align 8
  br label %135

135:                                              ; preds = %152, %134
  %136 = load i64, i64* %10, align 8
  %137 = load i64, i64* %9, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %135
  %140 = load i64, i64* %10, align 8
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %142 = load i64, i64* %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %147 = load i64, i64* %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 (i8*, i64, ...) @log_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %140, i64 %145, i64 %150)
  br label %152

152:                                              ; preds = %139
  %153 = load i64, i64* %10, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %10, align 8
  br label %135

155:                                              ; preds = %135
  %156 = load i64, i64* %12, align 8
  store i64 %156, i64* %5, align 8
  br label %157

157:                                              ; preds = %155, %34
  %158 = load i64, i64* %5, align 8
  ret i64 %158
}

declare dso_local i32 @log_debug(i8*, i64, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
