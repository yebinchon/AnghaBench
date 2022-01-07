; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/extr_THMemoryFile.c_THMemoryFile_readString.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/extr_THMemoryFile.c_THMemoryFile_readString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"attempt to use a closed file\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"attempt to read in a write-only file\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"format must be '*a' or '*l'\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"read error: read 0 blocks instead of 1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i8**)* @THMemoryFile_readString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @THMemoryFile_readString(i32* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %8, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @THArgCheck(i32 %21, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @THArgCheck(i32 %26, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = icmp sge i32 %29, 2
  br i1 %30, label %31, label %54

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 42
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 97
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 108
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i1 [ true, %37 ], [ %48, %43 ]
  br label %51

51:                                               ; preds = %49, %31
  %52 = phi i1 [ false, %31 ], [ %50, %49 ]
  %53 = zext i1 %52 to i32
  br label %55

54:                                               ; preds = %3
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i32 [ %53, %51 ], [ 0, %54 ]
  %57 = call i32 @THArgCheck(i32 %56, i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %55
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %65
  %75 = call i32 @THError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %65
  %77 = load i8**, i8*** %7, align 8
  store i8* null, i8** %77, align 8
  store i64 0, i64* %4, align 8
  br label %192

78:                                               ; preds = %55
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 97
  br i1 %83, label %84, label %110

84:                                               ; preds = %78
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %87, %90
  store i64 %91, i64* %9, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  %101 = load i64, i64* %9, align 8
  %102 = call i8* @THMemoryFile_cloneString(i8* %100, i64 %101)
  %103 = load i8**, i8*** %7, align 8
  store i8* %102, i8** %103, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %9, align 8
  store i64 %109, i64* %4, align 8
  br label %192

110:                                              ; preds = %78
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  store i8* %119, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %13, align 8
  br label %120

120:                                              ; preds = %140, %110
  %121 = load i64, i64* %13, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %124, %127
  %129 = icmp ult i64 %121, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %120
  %131 = load i8*, i8** %10, align 8
  %132 = load i64, i64* %13, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 10
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = load i64, i64* %13, align 8
  store i64 %138, i64* %12, align 8
  store i32 1, i32* %11, align 4
  br label %143

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %13, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %13, align 8
  br label %120

143:                                              ; preds = %137, %120
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %166

146:                                              ; preds = %143
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  %156 = load i64, i64* %12, align 8
  %157 = call i8* @THMemoryFile_cloneString(i8* %155, i64 %156)
  %158 = load i8**, i8*** %7, align 8
  store i8* %157, i8** %158, align 8
  %159 = load i64, i64* %12, align 8
  %160 = add i64 %159, 1
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add i64 %163, %160
  store i64 %164, i64* %162, align 8
  %165 = load i64, i64* %12, align 8
  store i64 %165, i64* %4, align 8
  br label %192

166:                                              ; preds = %143
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = sub nsw i64 %169, %172
  store i64 %173, i64* %14, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i8, i8* %178, i64 %181
  %183 = load i64, i64* %14, align 8
  %184 = call i8* @THMemoryFile_cloneString(i8* %182, i64 %183)
  %185 = load i8**, i8*** %7, align 8
  store i8* %184, i8** %185, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  %191 = load i64, i64* %14, align 8
  store i64 %191, i64* %4, align 8
  br label %192

192:                                              ; preds = %166, %146, %84, %76
  %193 = load i64, i64* %4, align 8
  ret i64 %193
}

declare dso_local i32 @THArgCheck(i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @THError(i8*) #1

declare dso_local i8* @THMemoryFile_cloneString(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
