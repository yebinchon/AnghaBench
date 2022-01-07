; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_hash.c_hashTypeDelete.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_hash.c_hashTypeDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@OBJ_ENCODING_ZIPLIST = common dso_local global i64 0, align 8
@ZIPLIST_HEAD = common dso_local global i32 0, align 4
@OBJ_ENCODING_HT = common dso_local global i64 0, align 8
@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Unknown hash encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashTypeDelete(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @OBJ_ENCODING_ZIPLIST, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @ZIPLIST_HEAD, align 4
  %19 = call i8* @ziplistIndex(i8* %17, i32 %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %13
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %4, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @sdslen(i64 %26)
  %28 = call i8* @ziplistFind(i8* %23, i8* %25, i32 %27, i32 1)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @ziplistDelete(i8* %32, i8** %7)
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @ziplistDelete(i8* %34, i8** %7)
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %31, %22
  br label %40

40:                                               ; preds = %39, %13
  br label %72

41:                                               ; preds = %2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @OBJ_ENCODING_HT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @dictDelete(i32* %51, i64 %52)
  %54 = load i64, i64* @C_OK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %47
  store i32 1, i32* %5, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @htNeedsResize(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @dictResize(i8* %65)
  br label %67

67:                                               ; preds = %62, %56
  br label %68

68:                                               ; preds = %67, %47
  br label %71

69:                                               ; preds = %41
  %70 = call i32 @serverPanic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %68
  br label %72

72:                                               ; preds = %71, %40
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i8* @ziplistIndex(i8*, i32) #1

declare dso_local i8* @ziplistFind(i8*, i8*, i32, i32) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local i8* @ziplistDelete(i8*, i8**) #1

declare dso_local i64 @dictDelete(i32*, i64) #1

declare dso_local i64 @htNeedsResize(i8*) #1

declare dso_local i32 @dictResize(i8*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
