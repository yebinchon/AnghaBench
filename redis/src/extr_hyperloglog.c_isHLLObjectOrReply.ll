; ModuleID = '/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_isHLLObjectOrReply.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_hyperloglog.c_isHLLObjectOrReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.hllhdr* }
%struct.hllhdr = type { i8*, i64 }

@OBJ_STRING = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@HLL_MAX_ENCODING = common dso_local global i64 0, align 8
@HLL_DENSE = common dso_local global i64 0, align 8
@HLL_DENSE_SIZE = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"-WRONGTYPE Key is not a valid HyperLogLog string value.\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isHLLObjectOrReply(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.hllhdr*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = load i32, i32* @OBJ_STRING, align 4
  %10 = call i64 @checkType(i32* %7, %struct.TYPE_6__* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @C_ERR, align 4
  store i32 %13, i32* %3, align 4
  br label %87

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = call i32 @sdsEncodedObject(%struct.TYPE_6__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %82

19:                                               ; preds = %14
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = call i32 @stringObjectLen(%struct.TYPE_6__* %20)
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 16
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %82

25:                                               ; preds = %19
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.hllhdr*, %struct.hllhdr** %27, align 8
  store %struct.hllhdr* %28, %struct.hllhdr** %6, align 8
  %29 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8
  %30 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 72
  br i1 %35, label %60, label %36

36:                                               ; preds = %25
  %37 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8
  %38 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 89
  br i1 %43, label %60, label %44

44:                                               ; preds = %36
  %45 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8
  %46 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 76
  br i1 %51, label %60, label %52

52:                                               ; preds = %44
  %53 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8
  %54 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 76
  br i1 %59, label %60, label %61

60:                                               ; preds = %52, %44, %36, %25
  br label %82

61:                                               ; preds = %52
  %62 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8
  %63 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HLL_MAX_ENCODING, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %82

68:                                               ; preds = %61
  %69 = load %struct.hllhdr*, %struct.hllhdr** %6, align 8
  %70 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HLL_DENSE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = call i32 @stringObjectLen(%struct.TYPE_6__* %75)
  %77 = load i32, i32* @HLL_DENSE_SIZE, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %82

80:                                               ; preds = %74, %68
  %81 = load i32, i32* @C_OK, align 4
  store i32 %81, i32* %3, align 4
  br label %87

82:                                               ; preds = %79, %67, %60, %24, %18
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @sdsnew(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %85 = call i32 @addReplySds(i32* %83, i32 %84)
  %86 = load i32, i32* @C_ERR, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %82, %80, %12
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @checkType(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @sdsEncodedObject(%struct.TYPE_6__*) #1

declare dso_local i32 @stringObjectLen(%struct.TYPE_6__*) #1

declare dso_local i32 @addReplySds(i32*, i32) #1

declare dso_local i32 @sdsnew(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
