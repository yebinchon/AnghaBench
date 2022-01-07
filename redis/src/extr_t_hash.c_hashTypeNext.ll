; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_hash.c_hashTypeNext.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_hash.c_hashTypeNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i8*, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@OBJ_ENCODING_ZIPLIST = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i32 0, align 4
@OBJ_ENCODING_HT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Unknown hash encoding\00", align 1
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashTypeNext(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @OBJ_ENCODING_ZIPLIST, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %60

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %4, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %5, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %12
  %27 = load i8*, i8** %6, align 8
  %28 = icmp eq i8* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @serverAssert(i32 %29)
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @ziplistIndex(i8* %31, i32 0)
  store i8* %32, i8** %5, align 8
  br label %41

33:                                               ; preds = %12
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @serverAssert(i32 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @ziplistNext(i8* %38, i8* %39)
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %33, %26
  %42 = load i8*, i8** %5, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @C_ERR, align 4
  store i32 %45, i32* %2, align 4
  br label %82

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i8* @ziplistNext(i8* %47, i8* %48)
  store i8* %49, i8** %6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = icmp ne i8* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @serverAssert(i32 %52)
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  br label %80

60:                                               ; preds = %1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @OBJ_ENCODING_HT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32* @dictNext(i32 %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  store i32* %70, i32** %72, align 8
  %73 = icmp eq i32* %70, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @C_ERR, align 4
  store i32 %75, i32* %2, align 4
  br label %82

76:                                               ; preds = %66
  br label %79

77:                                               ; preds = %60
  %78 = call i32 @serverPanic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %76
  br label %80

80:                                               ; preds = %79, %46
  %81 = load i32, i32* @C_OK, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %74, %44
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i8* @ziplistIndex(i8*, i32) #1

declare dso_local i8* @ziplistNext(i8*, i8*) #1

declare dso_local i32* @dictNext(i32) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
