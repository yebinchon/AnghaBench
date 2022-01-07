; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_view_column_text.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_view_column_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.view_column_data = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_11__*, i32*, i32*, i32*, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_14__ = type { i8* }
%struct.view_column = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.view*, %struct.view_column_data*, %struct.view_column*)* @view_column_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @view_column_text(%struct.view* %0, %struct.view_column_data* %1, %struct.view_column* %2) #0 {
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.view_column_data*, align 8
  %6 = alloca %struct.view_column*, align 8
  %7 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.view_column_data* %1, %struct.view_column_data** %5, align 8
  store %struct.view_column* %2, %struct.view_column** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = load %struct.view_column*, %struct.view_column** %6, align 8
  %9 = getelementptr inbounds %struct.view_column, %struct.view_column* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %166 [
    i32 139, label %11
    i32 138, label %32
    i32 137, label %36
    i32 131, label %62
    i32 136, label %74
    i32 135, label %84
    i32 134, label %101
    i32 133, label %124
    i32 132, label %125
    i32 129, label %137
    i32 130, label %154
    i32 128, label %162
  ]

11:                                               ; preds = %3
  %12 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %13 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %18 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.view_column*, %struct.view_column** %6, align 8
  %21 = getelementptr inbounds %struct.view_column, %struct.view_column* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.view_column*, %struct.view_column** %6, align 8
  %26 = getelementptr inbounds %struct.view_column, %struct.view_column* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @mkauthor(i32 %19, i32 %24, i32 %29)
  store i8* %30, i8** %7, align 8
  br label %31

31:                                               ; preds = %16, %11
  br label %166

32:                                               ; preds = %3
  %33 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %34 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %7, align 8
  br label %166

36:                                               ; preds = %3
  %37 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %38 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %43 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.view_column*, %struct.view_column** %6, align 8
  %46 = getelementptr inbounds %struct.view_column, %struct.view_column* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.view_column*, %struct.view_column** %6, align 8
  %51 = getelementptr inbounds %struct.view_column, %struct.view_column* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.view_column*, %struct.view_column** %6, align 8
  %56 = getelementptr inbounds %struct.view_column, %struct.view_column* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @mkdate(i32 %44, i32 %49, i32 %54, i32 %59)
  store i8* %60, i8** %7, align 8
  br label %61

61:                                               ; preds = %41, %36
  br label %166

62:                                               ; preds = %3
  %63 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %64 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %63, i32 0, i32 9
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = icmp ne %struct.TYPE_14__* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %69 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %68, i32 0, i32 9
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %7, align 8
  br label %73

73:                                               ; preds = %67, %62
  br label %166

74:                                               ; preds = %3
  %75 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %76 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %81 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %7, align 8
  br label %83

83:                                               ; preds = %79, %74
  br label %166

84:                                               ; preds = %3
  %85 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %86 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %85, i32 0, i32 8
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %91 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %90, i32 0, i32 8
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.view_column*, %struct.view_column** %6, align 8
  %95 = getelementptr inbounds %struct.view_column, %struct.view_column* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @mkfilesize(i32 %93, i32 %98)
  store i8* %99, i8** %7, align 8
  br label %100

100:                                              ; preds = %89, %84
  br label %166

101:                                              ; preds = %3
  %102 = load %struct.view_column*, %struct.view_column** %6, align 8
  %103 = getelementptr inbounds %struct.view_column, %struct.view_column* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %101
  %109 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %110 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %115 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  br label %121

117:                                              ; preds = %108
  %118 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %119 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %118, i32 0, i32 3
  %120 = load i8*, i8** %119, align 8
  br label %121

121:                                              ; preds = %117, %113
  %122 = phi i8* [ %116, %113 ], [ %120, %117 ]
  store i8* %122, i8** %7, align 8
  br label %123

123:                                              ; preds = %121, %101
  br label %166

124:                                              ; preds = %3
  br label %166

125:                                              ; preds = %3
  %126 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %127 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %126, i32 0, i32 7
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %132 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %131, i32 0, i32 7
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @mkmode(i32 %134)
  store i8* %135, i8** %7, align 8
  br label %136

136:                                              ; preds = %130, %125
  br label %166

137:                                              ; preds = %3
  %138 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %139 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %153

142:                                              ; preds = %137
  %143 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %144 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %143, i32 0, i32 6
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.view_column*, %struct.view_column** %6, align 8
  %148 = getelementptr inbounds %struct.view_column, %struct.view_column* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @mkstatus(i32 %146, i32 %151)
  store i8* %152, i8** %7, align 8
  br label %153

153:                                              ; preds = %142, %137
  br label %166

154:                                              ; preds = %3
  %155 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %156 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %155, i32 0, i32 5
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** %7, align 8
  br label %166

162:                                              ; preds = %3
  %163 = load %struct.view_column_data*, %struct.view_column_data** %5, align 8
  %164 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %163, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %7, align 8
  br label %166

166:                                              ; preds = %3, %162, %154, %153, %136, %124, %123, %100, %83, %73, %61, %32, %31
  %167 = load i8*, i8** %7, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i8*, i8** %7, align 8
  br label %172

171:                                              ; preds = %166
  br label %172

172:                                              ; preds = %171, %169
  %173 = phi i8* [ %170, %169 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %171 ]
  ret i8* %173
}

declare dso_local i8* @mkauthor(i32, i32, i32) #1

declare dso_local i8* @mkdate(i32, i32, i32, i32) #1

declare dso_local i8* @mkfilesize(i32, i32) #1

declare dso_local i8* @mkmode(i32) #1

declare dso_local i8* @mkstatus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
