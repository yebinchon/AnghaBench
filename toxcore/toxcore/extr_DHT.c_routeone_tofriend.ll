; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_routeone_tofriend.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_routeone_tofriend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@MAX_FRIEND_CLIENTS = common dso_local global i32 0, align 4
@BAD_NODE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32*, i32)* @routeone_tofriend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @routeone_tofriend(%struct.TYPE_11__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @friend_number(%struct.TYPE_11__* %21, i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %116

27:                                               ; preds = %4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %32
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %11, align 8
  %34 = load i32, i32* @MAX_FRIEND_CLIENTS, align 4
  %35 = mul nsw i32 %34, 2
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %13, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %89, %27
  %40 = load i32, i32* %17, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %92

42:                                               ; preds = %39
  store i32 0, i32* %16, align 4
  br label %43

43:                                               ; preds = %85, %42
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* @MAX_FRIEND_CLIENTS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %88

47:                                               ; preds = %43
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 %52
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %18, align 8
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %18, align 8
  br label %62

59:                                               ; preds = %47
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %18, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = call i64 @ip_isset(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BAD_NODE_TIMEOUT, align 4
  %73 = call i32 @is_timeout(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %38, i64 %80
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %75, %68, %62
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %43

88:                                               ; preds = %43
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %17, align 4
  br label %39

92:                                               ; preds = %39
  %93 = load i32, i32* %15, align 4
  %94 = icmp slt i32 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %114

96:                                               ; preds = %92
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (...) @rand()
  %101 = load i32, i32* %15, align 4
  %102 = srem i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %38, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @sendpacket(i32 %99, i32 %105, i32* %106, i32 %107)
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %96
  store i32 1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %114

113:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %114

114:                                              ; preds = %113, %112, %95
  %115 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %115)
  br label %116

116:                                              ; preds = %114, %26
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @friend_number(%struct.TYPE_11__*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @ip_isset(i32*) #1

declare dso_local i32 @is_timeout(i32, i32) #1

declare dso_local i32 @sendpacket(i32, i32, i32*, i32) #1

declare dso_local i32 @rand(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
