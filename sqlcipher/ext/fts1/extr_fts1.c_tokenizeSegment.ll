; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_tokenizeSegment.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_tokenizeSegment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*, i8*, i32, %struct.TYPE_15__**)*, i32 (%struct.TYPE_15__*, i8**, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_15__*)* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

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
  br label %186

41:                                               ; preds = %5
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %44, align 8
  br label %45

45:                                               ; preds = %41, %74, %106, %156
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
  br label %157

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
  %140 = load i32, i32* %16, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  store i32 %140, i32* %150, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %139
  %154 = load i32, i32* %16, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %16, align 4
  br label %156

156:                                              ; preds = %153, %139
  br label %45

157:                                              ; preds = %54
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %157
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %14, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %160
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sub nsw i32 %169, %170
  %172 = sub nsw i32 %171, 1
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 2
  store i32 %172, i32* %179, align 4
  br label %180

180:                                              ; preds = %166, %160, %157
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 2
  %183 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %182, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %185 = call i32 %183(%struct.TYPE_15__* %184)
  store i32 %185, i32* %6, align 4
  br label %186

186:                                              ; preds = %180, %39
  %187 = load i32, i32* %6, align 4
  ret i32 %187
}

declare dso_local i32 @checkColumnSpecifier(i32, i8*, i32) #1

declare dso_local i32 @queryAdd(%struct.TYPE_17__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
