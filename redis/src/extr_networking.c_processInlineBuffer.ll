; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_processInlineBuffer.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_processInlineBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, i8**, i64, i32 }

@PROTO_INLINE_MAX_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Protocol error: too big inline request\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"too big inline request\00", align 1
@C_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Protocol error: unbalanced quotes in request\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"unbalanced quotes in inline request\00", align 1
@CLIENT_SLAVE = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@OBJ_STRING = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @processInlineBuffer(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 1, i32* %7, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  %19 = call i8* @strchr(i8* %18, i8 signext 10)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @sdslen(i8* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %26, %30
  %32 = load i64, i64* @PROTO_INLINE_MAX_SIZE, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = call i32 @addReplyError(%struct.TYPE_6__* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = call i32 @setProtocolError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %37)
  br label %39

39:                                               ; preds = %34, %22
  %40 = load i32, i32* @C_ERR, align 4
  store i32 %40, i32* %2, align 4
  br label %195

41:                                               ; preds = %1
  %42 = load i8*, i8** %4, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  %54 = icmp ne i8* %45, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %44
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 -1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 13
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 -1
  store i8* %63, i8** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %61, %55, %44, %41
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  %76 = ptrtoint i8* %67 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  store i64 %78, i64* %10, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  %87 = load i64, i64* %10, align 8
  %88 = call i8* @sdsnewlen(i8* %86, i64 %87)
  store i8* %88, i8** %9, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i8** @sdssplitargs(i8* %89, i32* %5)
  store i8** %90, i8*** %8, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @sdsfree(i8* %91)
  %93 = load i8**, i8*** %8, align 8
  %94 = icmp eq i8** %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %66
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = call i32 @addReplyError(%struct.TYPE_6__* %96, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = call i32 @setProtocolError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_6__* %98)
  %100 = load i32, i32* @C_ERR, align 4
  store i32 %100, i32* %2, align 4
  br label %195

101:                                              ; preds = %66
  %102 = load i64, i64* %10, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CLIENT_SLAVE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %111, %104, %101
  %116 = load i64, i64* %10, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = add i64 %116, %118
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = add i64 %123, %119
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 8
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %115
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = load i8**, i8*** %130, align 8
  %132 = icmp ne i8** %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 3
  %136 = load i8**, i8*** %135, align 8
  %137 = call i32 @zfree(i8** %136)
  br label %138

138:                                              ; preds = %133, %128
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 8, %140
  %142 = trunc i64 %141 to i32
  %143 = call i8** @zmalloc(i32 %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  store i8** %143, i8*** %145, align 8
  br label %146

146:                                              ; preds = %138, %115
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  store i64 0, i64* %148, align 8
  store i32 0, i32* %6, align 4
  br label %149

149:                                              ; preds = %188, %146
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %191

153:                                              ; preds = %149
  %154 = load i8**, i8*** %8, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i64 @sdslen(i8* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %180

161:                                              ; preds = %153
  %162 = load i32, i32* @OBJ_STRING, align 4
  %163 = load i8**, i8*** %8, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i8* @createObject(i32 %162, i8* %167)
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 3
  %171 = load i8**, i8*** %170, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i8*, i8** %171, i64 %174
  store i8* %168, i8** %175, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %177, align 8
  br label %187

180:                                              ; preds = %153
  %181 = load i8**, i8*** %8, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @sdsfree(i8* %185)
  br label %187

187:                                              ; preds = %180, %161
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %6, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %6, align 4
  br label %149

191:                                              ; preds = %149
  %192 = load i8**, i8*** %8, align 8
  %193 = call i32 @zfree(i8** %192)
  %194 = load i32, i32* @C_OK, align 4
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %191, %95, %39
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @setProtocolError(i8*, %struct.TYPE_6__*) #1

declare dso_local i8* @sdsnewlen(i8*, i64) #1

declare dso_local i8** @sdssplitargs(i8*, i32*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @zfree(i8**) #1

declare dso_local i8** @zmalloc(i32) #1

declare dso_local i8* @createObject(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
