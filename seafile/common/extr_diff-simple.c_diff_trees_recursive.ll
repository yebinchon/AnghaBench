; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_trees_recursive.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_trees_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_11__**, i8*, i32*)* @diff_trees_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_trees_recursive(i32 %0, %struct.TYPE_11__** %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [3 x %struct.TYPE_12__*], align 16
  %11 = alloca [3 x %struct.TYPE_10__*], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %44, %4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %22, i64 %24
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %29, i64 %31
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x %struct.TYPE_12__*], [3 x %struct.TYPE_12__*]* %10, i64 0, i64 %37
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %38, align 8
  br label %43

39:                                               ; preds = %21
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x %struct.TYPE_12__*], [3 x %struct.TYPE_12__*]* %10, i64 0, i64 %41
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %42, align 8
  br label %43

43:                                               ; preds = %39, %28
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %17

47:                                               ; preds = %17
  br label %48

48:                                               ; preds = %47, %162, %192, %213
  store i8* null, i8** %14, align 8
  %49 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %11, i64 0, i64 0
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 8, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memset(%struct.TYPE_10__** %49, i32 0, i32 %53)
  %55 = load i64, i64* @TRUE, align 8
  store i64 %55, i64* %15, align 8
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %94, %48
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %56
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [3 x %struct.TYPE_12__*], [3 x %struct.TYPE_12__*]* %10, i64 0, i64 %62
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = icmp ne %struct.TYPE_12__* %64, null
  br i1 %65, label %66, label %93

66:                                               ; preds = %60
  %67 = load i64, i64* @FALSE, align 8
  store i64 %67, i64* %15, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x %struct.TYPE_12__*], [3 x %struct.TYPE_12__*]* %10, i64 0, i64 %69
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %13, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %66
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %14, align 8
  br label %92

80:                                               ; preds = %66
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = call i64 @strcmp(i8* %83, i8* %84)
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %14, align 8
  br label %91

91:                                               ; preds = %87, %80
  br label %92

92:                                               ; preds = %91, %76
  br label %93

93:                                               ; preds = %92, %60
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %56

97:                                               ; preds = %56
  %98 = load i64, i64* %15, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %214

101:                                              ; preds = %97
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %141, %101
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %144

106:                                              ; preds = %102
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [3 x %struct.TYPE_12__*], [3 x %struct.TYPE_12__*]* %10, i64 0, i64 %108
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = icmp ne %struct.TYPE_12__* %110, null
  br i1 %111, label %112, label %140

112:                                              ; preds = %106
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [3 x %struct.TYPE_12__*], [3 x %struct.TYPE_12__*]* %10, i64 0, i64 %114
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  store %struct.TYPE_10__* %118, %struct.TYPE_10__** %13, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @strcmp(i8* %119, i8* %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %112
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %11, i64 0, i64 %128
  store %struct.TYPE_10__* %126, %struct.TYPE_10__** %129, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [3 x %struct.TYPE_12__*], [3 x %struct.TYPE_12__*]* %10, i64 0, i64 %131
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [3 x %struct.TYPE_12__*], [3 x %struct.TYPE_12__*]* %10, i64 0, i64 %137
  store %struct.TYPE_12__* %135, %struct.TYPE_12__** %138, align 8
  br label %139

139:                                              ; preds = %125, %112
  br label %140

140:                                              ; preds = %139, %106
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %102

144:                                              ; preds = %102
  %145 = load i32, i32* %6, align 4
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %163

147:                                              ; preds = %144
  %148 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %11, i64 0, i64 0
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 16
  %150 = icmp ne %struct.TYPE_10__* %149, null
  br i1 %150, label %151, label %163

151:                                              ; preds = %147
  %152 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %11, i64 0, i64 1
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = icmp ne %struct.TYPE_10__* %153, null
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %11, i64 0, i64 0
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 16
  %158 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %11, i64 0, i64 1
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = call i64 @dirent_same(%struct.TYPE_10__* %157, %struct.TYPE_10__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %48

163:                                              ; preds = %155, %151, %147, %144
  %164 = load i32, i32* %6, align 4
  %165 = icmp eq i32 %164, 3
  br i1 %165, label %166, label %193

166:                                              ; preds = %163
  %167 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %11, i64 0, i64 0
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 16
  %169 = icmp ne %struct.TYPE_10__* %168, null
  br i1 %169, label %170, label %193

170:                                              ; preds = %166
  %171 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %11, i64 0, i64 1
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = icmp ne %struct.TYPE_10__* %172, null
  br i1 %173, label %174, label %193

174:                                              ; preds = %170
  %175 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %11, i64 0, i64 2
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 16
  %177 = icmp ne %struct.TYPE_10__* %176, null
  br i1 %177, label %178, label %193

178:                                              ; preds = %174
  %179 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %11, i64 0, i64 0
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 16
  %181 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %11, i64 0, i64 1
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = call i64 @dirent_same(%struct.TYPE_10__* %180, %struct.TYPE_10__* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %178
  %186 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %11, i64 0, i64 0
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 16
  %188 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %11, i64 0, i64 2
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 16
  %190 = call i64 @dirent_same(%struct.TYPE_10__* %187, %struct.TYPE_10__* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  br label %48

193:                                              ; preds = %185, %178, %174, %170, %166, %163
  %194 = load i32, i32* %6, align 4
  %195 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %11, i64 0, i64 0
  %196 = load i8*, i8** %8, align 8
  %197 = load i32*, i32** %9, align 8
  %198 = call i32 @diff_files(i32 %194, %struct.TYPE_10__** %195, i8* %196, i32* %197)
  store i32 %198, i32* %16, align 4
  %199 = load i32, i32* %16, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %193
  %202 = load i32, i32* %16, align 4
  store i32 %202, i32* %5, align 4
  br label %216

203:                                              ; preds = %193
  %204 = load i32, i32* %6, align 4
  %205 = getelementptr inbounds [3 x %struct.TYPE_10__*], [3 x %struct.TYPE_10__*]* %11, i64 0, i64 0
  %206 = load i8*, i8** %8, align 8
  %207 = load i32*, i32** %9, align 8
  %208 = call i32 @diff_directories(i32 %204, %struct.TYPE_10__** %205, i8* %206, i32* %207)
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %203
  %212 = load i32, i32* %16, align 4
  store i32 %212, i32* %5, align 4
  br label %216

213:                                              ; preds = %203
  br label %48

214:                                              ; preds = %100
  %215 = load i32, i32* %16, align 4
  store i32 %215, i32* %5, align 4
  br label %216

216:                                              ; preds = %214, %211, %201
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

declare dso_local i32 @memset(%struct.TYPE_10__**, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @dirent_same(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @diff_files(i32, %struct.TYPE_10__**, i8*, i32*) #1

declare dso_local i32 @diff_directories(i32, %struct.TYPE_10__**, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
