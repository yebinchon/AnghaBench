; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_dht_test.c_test_addto_lists_bad.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_dht_test.c_test_addto_lists_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Wrong test indices are chosen\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Wrong number of added clients\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Client id is not in the list\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Wrong bad client removed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_addto_lists_bad(i32* %0, %struct.TYPE_11__* %1, i32 %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %8, align 8
  %19 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %26 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %16, align 8
  %29 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %17, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AF_INET6, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  store i32 %39, i32* %18, align 4
  %40 = mul nuw i64 4, %20
  %41 = trunc i64 %40 to i32
  %42 = call i32 @randombytes(i32* %22, i32 %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @mark_all_good(%struct.TYPE_11__* %43, i32 %44, i32 %45)
  %47 = call i32 (...) @rand()
  %48 = load i32, i32* %7, align 4
  %49 = sdiv i32 %48, 3
  %50 = srem i32 %47, %49
  store i32 %50, i32* %10, align 4
  %51 = call i32 (...) @rand()
  %52 = load i32, i32* %7, align 4
  %53 = sdiv i32 %52, 3
  %54 = srem i32 %51, %53
  %55 = load i32, i32* %7, align 4
  %56 = sdiv i32 %55, 3
  %57 = add nsw i32 %54, %56
  store i32 %57, i32* %11, align 4
  %58 = call i32 (...) @rand()
  %59 = load i32, i32* %7, align 4
  %60 = sdiv i32 %59, 3
  %61 = srem i32 %58, %60
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 2, %62
  %64 = sdiv i32 %63, 3
  %65 = add nsw i32 %61, %64
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %74, %75
  br label %77

77:                                               ; preds = %73, %69, %4
  %78 = phi i1 [ true, %69 ], [ true, %4 ], [ %76, %73 ]
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @ck_assert_msg(i32 %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @id_copy(i32* %25, i32 %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @id_copy(i32* %28, i32 %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @id_copy(i32* %31, i32 %101)
  %103 = load i32, i32* %18, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %77
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = call i32 @mark_bad(i32* %110)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = call i32 @mark_bad(i32* %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = call i32 @mark_bad(i32* %122)
  br label %143

124:                                              ; preds = %77
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = call i32 @mark_bad(i32* %129)
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = call i32 @mark_bad(i32* %135)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = call i32 @mark_bad(i32* %141)
  br label %143

143:                                              ; preds = %124, %105
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %150 = bitcast %struct.TYPE_10__* %149 to { i32, i64 }*
  %151 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %150, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @addto_lists(i32* %148, i32 %152, i64 %154, i32* %22)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp sge i32 %156, 1
  %158 = zext i1 %157 to i32
  %159 = call i32 @ck_assert_msg(i32 %158, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i64 @client_in_list(%struct.TYPE_11__* %160, i32 %161, i32* %22)
  %163 = icmp sge i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @ck_assert_msg(i32 %164, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call i64 @client_in_list(%struct.TYPE_11__* %166, i32 %167, i32* %28)
  %169 = icmp sge i64 %168, 0
  %170 = zext i1 %169 to i32
  %171 = call i32 @ck_assert_msg(i32 %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %173 = load i32, i32* %7, align 4
  %174 = call i64 @client_in_list(%struct.TYPE_11__* %172, i32 %173, i32* %31)
  %175 = icmp sge i64 %174, 0
  %176 = zext i1 %175 to i32
  %177 = call i32 @ck_assert_msg(i32 %176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %178 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %178)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @randombytes(i32*, i32) #2

declare dso_local i32 @mark_all_good(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @rand(...) #2

declare dso_local i32 @ck_assert_msg(i32, i8*) #2

declare dso_local i32 @id_copy(i32*, i32) #2

declare dso_local i32 @mark_bad(i32*) #2

declare dso_local i32 @addto_lists(i32*, i32, i64, i32*) #2

declare dso_local i64 @client_in_list(%struct.TYPE_11__*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
