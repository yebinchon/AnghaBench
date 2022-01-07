; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_rewriteSetObject.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_rewriteSetObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@OBJ_ENCODING_INTSET = common dso_local global i64 0, align 8
@AOF_REWRITE_ITEMS_PER_CMD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"SADD\00", align 1
@OBJ_ENCODING_HT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknown set encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rewriteSetObject(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i64 0, i64* %8, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = call i64 @setTypeSize(%struct.TYPE_6__* %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OBJ_ENCODING_INTSET, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %81

24:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %77, %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  %31 = call i64 @intsetGet(i32 %28, i32 %29, i32* %11)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %80

33:                                               ; preds = %25
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %33
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @AOF_REWRITE_ITEMS_PER_CMD, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* @AOF_REWRITE_ITEMS_PER_CMD, align 8
  br label %44

42:                                               ; preds = %36
  %43 = load i64, i64* %9, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %12, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 2, %48
  %50 = call i64 @rioWriteBulkCount(i32* %47, i8 signext 42, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %154

53:                                               ; preds = %44
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @rioWriteBulkString(i32* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %154

58:                                               ; preds = %53
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = call i64 @rioWriteBulkObject(i32* %59, %struct.TYPE_6__* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %154

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %33
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i64 @rioWriteBulkLongLong(i32* %66, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %154

71:                                               ; preds = %65
  %72 = load i64, i64* %8, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* @AOF_REWRITE_ITEMS_PER_CMD, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i64 0, i64* %8, align 8
  br label %77

77:                                               ; preds = %76, %71
  %78 = load i64, i64* %9, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %9, align 8
  br label %25

80:                                               ; preds = %25
  br label %153

81:                                               ; preds = %3
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @OBJ_ENCODING_HT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %150

87:                                               ; preds = %81
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32* @dictGetIterator(i32 %90)
  store i32* %91, i32** %13, align 8
  br label %92

92:                                               ; preds = %144, %87
  %93 = load i32*, i32** %13, align 8
  %94 = call i32* @dictNext(i32* %93)
  store i32* %94, i32** %14, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %147

96:                                               ; preds = %92
  %97 = load i32*, i32** %14, align 8
  %98 = call i8* @dictGetKey(i32* %97)
  store i8* %98, i8** %15, align 8
  %99 = load i64, i64* %8, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %130

101:                                              ; preds = %96
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* @AOF_REWRITE_ITEMS_PER_CMD, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i64, i64* @AOF_REWRITE_ITEMS_PER_CMD, align 8
  br label %109

107:                                              ; preds = %101
  %108 = load i64, i64* %9, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i64 [ %106, %105 ], [ %108, %107 ]
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %16, align 4
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 2, %113
  %115 = call i64 @rioWriteBulkCount(i32* %112, i8 signext 42, i32 %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %154

118:                                              ; preds = %109
  %119 = load i32*, i32** %5, align 8
  %120 = call i64 @rioWriteBulkString(i32* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %154

123:                                              ; preds = %118
  %124 = load i32*, i32** %5, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %126 = call i64 @rioWriteBulkObject(i32* %124, %struct.TYPE_6__* %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 0, i32* %4, align 4
  br label %154

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %129, %96
  %131 = load i32*, i32** %5, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = call i32 @sdslen(i8* %133)
  %135 = call i64 @rioWriteBulkString(i32* %131, i8* %132, i32 %134)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %154

138:                                              ; preds = %130
  %139 = load i64, i64* %8, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %8, align 8
  %141 = load i64, i64* @AOF_REWRITE_ITEMS_PER_CMD, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i64 0, i64* %8, align 8
  br label %144

144:                                              ; preds = %143, %138
  %145 = load i64, i64* %9, align 8
  %146 = add nsw i64 %145, -1
  store i64 %146, i64* %9, align 8
  br label %92

147:                                              ; preds = %92
  %148 = load i32*, i32** %13, align 8
  %149 = call i32 @dictReleaseIterator(i32* %148)
  br label %152

150:                                              ; preds = %81
  %151 = call i32 @serverPanic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %147
  br label %153

153:                                              ; preds = %152, %80
  store i32 1, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %137, %128, %122, %117, %70, %63, %57, %52
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i64 @setTypeSize(%struct.TYPE_6__*) #1

declare dso_local i64 @intsetGet(i32, i32, i32*) #1

declare dso_local i64 @rioWriteBulkCount(i32*, i8 signext, i32) #1

declare dso_local i64 @rioWriteBulkString(i32*, i8*, i32) #1

declare dso_local i64 @rioWriteBulkObject(i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @rioWriteBulkLongLong(i32*, i32) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i8* @dictGetKey(i32*) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
