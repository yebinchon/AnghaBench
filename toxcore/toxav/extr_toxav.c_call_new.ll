; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_toxav.c_call_new.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_toxav.c_call_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__**, i32 }

@TOXAV_ERR_CALL_OK = common dso_local global i32 0, align 4
@TOXAV_ERR_CALL_FRIEND_NOT_FOUND = common dso_local global i32 0, align 4
@TOXAV_ERR_CALL_FRIEND_NOT_CONNECTED = common dso_local global i32 0, align 4
@TOXAV_ERR_CALL_FRIEND_ALREADY_IN_CALL = common dso_local global i32 0, align 4
@TOXAV_ERR_CALL_MALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @call_new(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @TOXAV_ERR_CALL_OK, align 4
  store i32 %11, i32* %7, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @m_friend_exists(i32 %14, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @TOXAV_ERR_CALL_FRIEND_NOT_FOUND, align 4
  store i32 %19, i32* %7, align 4
  br label %188

20:                                               ; preds = %3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @m_get_friend_connectionstatus(i32 %23, i32 %24)
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @TOXAV_ERR_CALL_FRIEND_NOT_CONNECTED, align 4
  store i32 %28, i32* %7, align 4
  br label %188

29:                                               ; preds = %20
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32* @call_get(%struct.TYPE_9__* %30, i32 %31)
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @TOXAV_ERR_CALL_FRIEND_ALREADY_IN_CALL, align 4
  store i32 %35, i32* %7, align 4
  br label %188

36:                                               ; preds = %29
  %37 = call i8* @calloc(i32 32, i32 1)
  %38 = bitcast i8* %37 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %8, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = icmp eq %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @TOXAV_ERR_CALL_MALLOC, align 4
  store i32 %42, i32* %7, align 4
  br label %188

43:                                               ; preds = %36
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %51, align 8
  %53 = icmp eq %struct.TYPE_8__** %52, null
  br i1 %53, label %54, label %75

54:                                               ; preds = %43
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i8* @calloc(i32 8, i32 %56)
  %58 = bitcast i8* %57 to %struct.TYPE_8__**
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  store %struct.TYPE_8__** %58, %struct.TYPE_8__*** %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %62, align 8
  %64 = icmp eq %struct.TYPE_8__** %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %54
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = call i32 @free(%struct.TYPE_8__* %66)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  %68 = load i32, i32* @TOXAV_ERR_CALL_MALLOC, align 4
  store i32 %68, i32* %7, align 4
  br label %188

69:                                               ; preds = %54
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  br label %180

75:                                               ; preds = %43
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %146

81:                                               ; preds = %75
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = mul i64 8, %87
  %89 = trunc i64 %88 to i32
  %90 = call i8* @realloc(%struct.TYPE_8__** %84, i32 %89)
  store i8* %90, i8** %9, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %81
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = call i32 @free(%struct.TYPE_8__* %94)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  %96 = load i32, i32* @TOXAV_ERR_CALL_MALLOC, align 4
  store i32 %96, i32* %7, align 4
  br label %188

97:                                               ; preds = %81
  %98 = load i8*, i8** %9, align 8
  %99 = bitcast i8* %98 to %struct.TYPE_8__**
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  store %struct.TYPE_8__** %99, %struct.TYPE_8__*** %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %117, %97
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %113, i64 %115
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %116, align 8
  br label %117

117:                                              ; preds = %110
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %106

120:                                              ; preds = %106
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %122, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %123, i64 %127
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  store %struct.TYPE_8__* %129, %struct.TYPE_8__** %131, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %134, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %135, i64 %139
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  store %struct.TYPE_8__* %132, %struct.TYPE_8__** %142, align 8
  %143 = load i32, i32* %5, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %179

146:                                              ; preds = %75
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %178

152:                                              ; preds = %146
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %154, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %155, i64 %159
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  store %struct.TYPE_8__* %161, %struct.TYPE_8__** %163, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %166, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %167, i64 %171
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  store %struct.TYPE_8__* %164, %struct.TYPE_8__** %174, align 8
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %152, %146
  br label %179

179:                                              ; preds = %178, %120
  br label %180

180:                                              ; preds = %179, %69
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %184, i64 %186
  store %struct.TYPE_8__* %181, %struct.TYPE_8__** %187, align 8
  br label %188

188:                                              ; preds = %180, %93, %65, %41, %34, %27, %18
  %189 = load i32*, i32** %6, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32, i32* %7, align 4
  %193 = load i32*, i32** %6, align 8
  store i32 %192, i32* %193, align 4
  br label %194

194:                                              ; preds = %191, %188
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  ret %struct.TYPE_8__* %195
}

declare dso_local i64 @m_friend_exists(i32, i32) #1

declare dso_local i32 @m_get_friend_connectionstatus(i32, i32) #1

declare dso_local i32* @call_get(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i8* @realloc(%struct.TYPE_8__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
