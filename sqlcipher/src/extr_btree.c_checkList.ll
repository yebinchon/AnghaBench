; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_checkList.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_checkList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"failed to get page %d\00", align 1
@PTRMAP_FREEPAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"freelist leaf count too big on page %d\00", align 1
@PTRMAP_OVERFLOW2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"%s is %d but should be %d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"overflow list length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32, i32)* @checkList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkList(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  br label %20

20:                                               ; preds = %141, %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i1 [ false, %20 ], [ %27, %23 ]
  br i1 %29, label %30, label %146

30:                                               ; preds = %28
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @checkRef(%struct.TYPE_8__* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %146

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %8, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @sqlite3PagerGet(i32 %41, i32 %42, i32** %12, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (%struct.TYPE_8__*, i8*, ...) @checkAppendMsg(%struct.TYPE_8__* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %146

49:                                               ; preds = %36
  %50 = load i32*, i32** %12, align 8
  %51 = call i64 @sqlite3PagerGetData(i32* %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %13, align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %122

55:                                               ; preds = %49
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  %58 = call i32 @get4byte(i8* %57)
  store i32 %58, i32* %14, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @PTRMAP_FREEPAGE, align 4
  %69 = call i32 @checkPtrmap(%struct.TYPE_8__* %66, i32 %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %65, %55
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sdiv i32 %76, 4
  %78 = sub nsw i32 %77, 2
  %79 = icmp sgt i32 %71, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (%struct.TYPE_8__*, i8*, ...) @checkAppendMsg(%struct.TYPE_8__* %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %8, align 4
  br label %121

86:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %114, %86
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %117

91:                                               ; preds = %87
  %92 = load i8*, i8** %13, align 8
  %93 = load i32, i32* %9, align 4
  %94 = mul nsw i32 %93, 4
  %95 = add nsw i32 8, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  %98 = call i32 @get4byte(i8* %97)
  store i32 %98, i32* %15, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %91
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @PTRMAP_FREEPAGE, align 4
  %109 = call i32 @checkPtrmap(%struct.TYPE_8__* %106, i32 %107, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %105, %91
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = load i32, i32* %15, align 4
  %113 = call i64 @checkRef(%struct.TYPE_8__* %111, i32 %112)
  br label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %87

117:                                              ; preds = %87
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %8, align 4
  %120 = sub nsw i32 %119, %118
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %117, %80
  br label %141

122:                                              ; preds = %49
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %122
  %130 = load i32, i32* %8, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  %133 = load i8*, i8** %13, align 8
  %134 = call i32 @get4byte(i8* %133)
  store i32 %134, i32* %9, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @PTRMAP_OVERFLOW2, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @checkPtrmap(%struct.TYPE_8__* %135, i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %132, %129, %122
  br label %141

141:                                              ; preds = %140, %121
  %142 = load i8*, i8** %13, align 8
  %143 = call i32 @get4byte(i8* %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32*, i32** %12, align 8
  %145 = call i32 @sqlite3PagerUnref(i32* %144)
  br label %20

146:                                              ; preds = %45, %35, %28
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %146
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %150, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %149
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %8, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load i32, i32* %10, align 4
  %165 = call i32 (%struct.TYPE_8__*, i8*, ...) @checkAppendMsg(%struct.TYPE_8__* %156, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %160, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %155, %149, %146
  ret void
}

declare dso_local i64 @checkRef(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @sqlite3PagerGet(i32, i32, i32**, i32) #1

declare dso_local i32 @checkAppendMsg(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i64 @sqlite3PagerGetData(i32*) #1

declare dso_local i32 @get4byte(i8*) #1

declare dso_local i32 @checkPtrmap(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3PagerUnref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
