; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_dht_test.c_test_addto_lists_good.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_dht_test.c_test_addto_lists_good.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Good client id is not in the list\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Good client id is in the list\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_addto_lists_good(i32* %0, i32* %1, i32 %2, %struct.TYPE_6__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AF_INET6, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  store i32 %25, i32* %13, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @mark_all_good(i32* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %34, %5
  %31 = mul nuw i64 4, %15
  %32 = trunc i64 %31 to i32
  %33 = call i32 @randombytes(i32* %17, i32 %32)
  br label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @is_furthest(i32* %35, i32* %36, i32 %37, i32* %17)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %30, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %47 = bitcast %struct.TYPE_6__* %46 to { i32, i64 }*
  %48 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %47, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @addto_lists(i32* %45, i32 %49, i64 %51, i32* %17)
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @client_in_list(i32* %53, i32 %54, i32* %17)
  %56 = icmp sge i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @ck_assert_msg(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %63, %40
  %60 = mul nuw i64 4, %15
  %61 = trunc i64 %60 to i32
  %62 = call i32 @randombytes(i32* %17, i32 %61)
  br label %63

63:                                               ; preds = %59
  %64 = load i32*, i32** %10, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @is_furthest(i32* %64, i32* %65, i32 %66, i32* %17)
  %68 = icmp ne i64 %67, 0
  %69 = xor i1 %68, true
  br i1 %69, label %59, label %70

70:                                               ; preds = %63
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %77 = bitcast %struct.TYPE_6__* %76 to { i32, i64 }*
  %78 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %77, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @addto_lists(i32* %75, i32 %79, i64 %81, i32* %17)
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @client_in_list(i32* %83, i32 %84, i32* %17)
  %86 = icmp eq i32 %85, -1
  %87 = zext i1 %86 to i32
  %88 = call i32 @ck_assert_msg(i32 %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %89)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mark_all_good(i32*, i32, i32) #2

declare dso_local i32 @randombytes(i32*, i32) #2

declare dso_local i64 @is_furthest(i32*, i32*, i32, i32*) #2

declare dso_local i32 @addto_lists(i32*, i32, i64, i32*) #2

declare dso_local i32 @ck_assert_msg(i32, i8*) #2

declare dso_local i32 @client_in_list(i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
