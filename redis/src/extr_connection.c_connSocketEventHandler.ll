; ModuleID = '/home/carl/AnghaBench/redis/src/extr_connection.c_connSocketEventHandler.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_connection.c_connSocketEventHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.aeEventLoop = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32*, i32*, i32*, i32, i32 }

@CONN_STATE_CONNECTING = common dso_local global i64 0, align 8
@AE_WRITABLE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CONN_STATE_ERROR = common dso_local global i64 0, align 8
@CONN_STATE_CONNECTED = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@CONN_FLAG_WRITE_BARRIER = common dso_local global i32 0, align 4
@AE_READABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aeEventLoop*, i32, i8*, i32)* @connSocketEventHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connSocketEventHandler(%struct.aeEventLoop* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.aeEventLoop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.aeEventLoop* %0, %struct.aeEventLoop** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.aeEventLoop*, %struct.aeEventLoop** %5, align 8
  %14 = ptrtoint %struct.aeEventLoop* %13 to i32
  %15 = call i32 @UNUSED(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @UNUSED(i32 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %9, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CONN_STATE_CONNECTING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %73

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @AE_WRITABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %25
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %73

35:                                               ; preds = %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = call i64 @connGetSocketError(%struct.TYPE_5__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* @errno, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* @CONN_STATE_ERROR, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %50

46:                                               ; preds = %35
  %47 = load i64, i64* @CONN_STATE_CONNECTED, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @AE_WRITABLE, align 4
  %61 = call i32 @aeDeleteFileEvent(i32 %56, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %50
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @callHandler(%struct.TYPE_5__* %63, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  br label %144

70:                                               ; preds = %62
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %70, %30, %25, %4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CONN_FLAG_WRITE_BARRIER, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @AE_WRITABLE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br label %88

88:                                               ; preds = %83, %73
  %89 = phi i1 [ false, %73 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @AE_READABLE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br label %100

100:                                              ; preds = %95, %88
  %101 = phi i1 [ false, %88 ], [ %99, %95 ]
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @callHandler(%struct.TYPE_5__* %109, i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %108
  br label %144

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116, %105, %100
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @callHandler(%struct.TYPE_5__* %121, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  br label %144

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %117
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %129
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @callHandler(%struct.TYPE_5__* %136, i32* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  br label %144

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %69, %115, %127, %142, %143, %132, %129
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i64 @connGetSocketError(%struct.TYPE_5__*) #1

declare dso_local i32 @aeDeleteFileEvent(i32, i32, i32) #1

declare dso_local i32 @callHandler(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
