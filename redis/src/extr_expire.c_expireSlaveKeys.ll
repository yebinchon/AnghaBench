; ModuleID = '/home/carl/AnghaBench/redis/src/extr_expire.c_expireSlaveKeys.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_expire.c_expireSlaveKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@slaveKeysWithExpire = common dso_local global i32* null, align 8
@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expireSlaveKeys() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = load i32*, i32** @slaveKeysWithExpire, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %0
  %15 = load i32*, i32** @slaveKeysWithExpire, align 8
  %16 = call i64 @dictSize(i32* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %0
  br label %115

19:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %20 = call i32 (...) @mstime()
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %19, %114
  %22 = load i32*, i32** @slaveKeysWithExpire, align 8
  %23 = call i32* @dictGetRandomKey(i32* %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @dictGetKey(i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @dictGetUnsignedIntegerVal(i32* %26)
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %77, %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %34 = icmp slt i32 %32, %33
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %82

37:                                               ; preds = %35
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %37
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 1), align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %9, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32* @dictFind(i32 %48, i32 %49)
  store i32* %50, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %41
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 1), align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i64 @activeExpireCycleTryExpire(%struct.TYPE_4__* %57, i32* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %62, %53, %41
  %64 = load i32*, i32** %10, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %2, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %2, align 4
  %72 = load i32, i32* %8, align 4
  %73 = shl i32 1, %72
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %69, %66, %63
  br label %77

77:                                               ; preds = %76, %37
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %6, align 4
  %81 = ashr i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %28

82:                                               ; preds = %35
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @dictSetUnsignedIntegerVal(i32* %86, i32 %87)
  br label %93

89:                                               ; preds = %82
  %90 = load i32*, i32** @slaveKeysWithExpire, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @dictDelete(i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %1, align 4
  %96 = load i32, i32* %2, align 4
  %97 = icmp sgt i32 %96, 3
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %115

99:                                               ; preds = %93
  %100 = load i32, i32* %1, align 4
  %101 = srem i32 %100, 64
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = call i32 (...) @mstime()
  %105 = load i32, i32* %3, align 4
  %106 = sub nsw i32 %104, %105
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %115

109:                                              ; preds = %103, %99
  %110 = load i32*, i32** @slaveKeysWithExpire, align 8
  %111 = call i64 @dictSize(i32* %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %115

114:                                              ; preds = %109
  br label %21

115:                                              ; preds = %18, %113, %108, %98
  ret void
}

declare dso_local i64 @dictSize(i32*) #1

declare dso_local i32 @mstime(...) #1

declare dso_local i32* @dictGetRandomKey(i32*) #1

declare dso_local i32 @dictGetKey(i32*) #1

declare dso_local i32 @dictGetUnsignedIntegerVal(i32*) #1

declare dso_local i32* @dictFind(i32, i32) #1

declare dso_local i64 @activeExpireCycleTryExpire(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @dictSetUnsignedIntegerVal(i32*, i32) #1

declare dso_local i32 @dictDelete(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
