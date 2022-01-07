; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_tokenizeSegment.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_tokenizeSegment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*, i8*, i32, %struct.TYPE_15__**)*, i32 (%struct.TYPE_15__*, i8**, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_15__*)* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32, i32, %struct.TYPE_17__*)* @tokenizeSegment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tokenizeSegment(%struct.TYPE_16__* %0, i8* %1, i32 %2, i32 %3, %struct.TYPE_17__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %11, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %12, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %14, align 4
  store i32 1, i32* %16, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_16__*, i8*, i32, %struct.TYPE_15__**)*, i32 (%struct.TYPE_16__*, i8*, i32, %struct.TYPE_15__**)** %30, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 %31(%struct.TYPE_16__* %32, i8* %33, i32 %34, %struct.TYPE_15__** %13)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %5
  %40 = load i32, i32* %17, align 4
  store i32 %40, i32* %6, align 4
  br label %209

41:                                               ; preds = %5
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %44, align 8
  br label %45

45:                                               ; preds = %41, %74, %106, %179
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32 (%struct.TYPE_15__*, i8**, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_15__*, i8**, i32*, i32*, i32*, i32*)** %47, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %50 = call i32 %48(%struct.TYPE_15__* %49, i8** %18, i32* %19, i32* %20, i32* %21, i32* %22)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* @SQLITE_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %180

55:                                               ; preds = %45
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %21, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 58
  br i1 %65, label %66, label %78

66:                                               ; preds = %58
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = load i32, i32* %19, align 4
  %72 = call i32 @checkColumnSpecifier(i32 %69, i8* %70, i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %45

78:                                               ; preds = %66, %58, %55
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %109, label %81

81:                                               ; preds = %78
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %81
  %87 = load i32, i32* %19, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* %20, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 79
  br i1 %96, label %97, label %109

97:                                               ; preds = %89
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* %20, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 82
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 2
  store i32 1, i32* %108, align 8
  br label %45

109:                                              ; preds = %97, %89, %86, %81, %78
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = load i32, i32* %19, align 4
  %113 = call i32 @queryAdd(%struct.TYPE_17__* %110, i8* %111, i32 %112)
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %139, label %116

116:                                              ; preds = %109
  %117 = load i32, i32* %20, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %116
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* %20, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 45
  br i1 %127, label %128, label %139

128:                                              ; preds = %119
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  store i32 1, i32* %138, align 4
  br label %139

139:                                              ; preds = %128, %119, %116, %109
  %140 = load i32, i32* %21, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %162

143:                                              ; preds = %139
  %144 = load i8*, i8** %8, align 8
  %145 = load i32, i32* %21, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 42
  br i1 %150, label %151, label %162

151:                                              ; preds = %143
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  store i32 1, i32* %161, align 4
  br label %162

162:                                              ; preds = %151, %143, %139
  %163 = load i32, i32* %16, align 4
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 2
  store i32 %163, i32* %173, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %162
  %177 = load i32, i32* %16, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %16, align 4
  br label %179

179:                                              ; preds = %176, %162
  br label %45

180:                                              ; preds = %54
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %203

183:                                              ; preds = %180
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = icmp sgt i32 %186, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %183
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sub nsw i32 %192, %193
  %195 = sub nsw i32 %194, 1
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %197, align 8
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 3
  store i32 %195, i32* %202, align 4
  br label %203

203:                                              ; preds = %189, %183, %180
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 2
  %206 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %205, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %208 = call i32 %206(%struct.TYPE_15__* %207)
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %203, %39
  %210 = load i32, i32* %6, align 4
  ret i32 %210
}

declare dso_local i32 @checkColumnSpecifier(i32, i8*, i32) #1

declare dso_local i32 @queryAdd(%struct.TYPE_17__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
