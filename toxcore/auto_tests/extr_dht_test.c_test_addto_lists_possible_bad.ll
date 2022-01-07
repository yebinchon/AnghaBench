; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_dht_test.c_test_addto_lists_possible_bad.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_dht_test.c_test_addto_lists_possible_bad.c"
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
@.str.3 = private unnamed_addr constant [21 x i8] c"Wrong client removed\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Id has been removed but is closer to than another one\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_addto_lists_possible_bad(i32* %0, %struct.TYPE_11__* %1, i32 %2, %struct.TYPE_10__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  store i32* %4, i32** %10, align 8
  %24 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %15, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %28 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %17, align 8
  %31 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %18, align 8
  %34 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %19, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AF_INET6, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  store i32 %44, i32* %20, align 4
  %45 = mul nuw i64 4, %25
  %46 = trunc i64 %45 to i32
  %47 = call i32 @randombytes(i32* %27, i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %20, align 4
  %51 = call i32 @mark_all_good(%struct.TYPE_11__* %48, i32 %49, i32 %50)
  %52 = call i32 (...) @rand()
  %53 = load i32, i32* %8, align 4
  %54 = sdiv i32 %53, 3
  %55 = srem i32 %52, %54
  store i32 %55, i32* %12, align 4
  %56 = call i32 (...) @rand()
  %57 = load i32, i32* %8, align 4
  %58 = sdiv i32 %57, 3
  %59 = srem i32 %56, %58
  %60 = load i32, i32* %8, align 4
  %61 = sdiv i32 %60, 3
  %62 = add nsw i32 %59, %61
  store i32 %62, i32* %13, align 4
  %63 = call i32 (...) @rand()
  %64 = load i32, i32* %8, align 4
  %65 = sdiv i32 %64, 3
  %66 = srem i32 %63, %65
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 2, %67
  %69 = sdiv i32 %68, 3
  %70 = add nsw i32 %66, %69
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %5
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp eq i32 %79, %80
  br label %82

82:                                               ; preds = %78, %74, %5
  %83 = phi i1 [ true, %74 ], [ true, %5 ], [ %81, %78 ]
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @ck_assert_msg(i32 %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @id_copy(i32* %30, i32 %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @id_copy(i32* %33, i32 %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @id_copy(i32* %36, i32 %106)
  %108 = load i32, i32* %20, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %82
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = call i32 @mark_possible_bad(i32* %115)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = call i32 @mark_possible_bad(i32* %121)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = call i32 @mark_possible_bad(i32* %127)
  br label %148

129:                                              ; preds = %82
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = call i32 @mark_possible_bad(i32* %134)
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = call i32 @mark_possible_bad(i32* %140)
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = call i32 @mark_possible_bad(i32* %146)
  br label %148

148:                                              ; preds = %129, %110
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  %153 = load i32*, i32** %6, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %155 = bitcast %struct.TYPE_10__* %154 to { i32, i64 }*
  %156 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %155, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @addto_lists(i32* %153, i32 %157, i64 %159, i32* %27)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp sge i32 %161, 1
  %163 = zext i1 %162 to i32
  %164 = call i32 @ck_assert_msg(i32 %163, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i64 @client_in_list(%struct.TYPE_11__* %165, i32 %166, i32* %27)
  %168 = icmp sge i64 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @ck_assert_msg(i32 %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i64 @client_in_list(%struct.TYPE_11__* %171, i32 %172, i32* %30)
  %174 = icmp sge i64 %173, 0
  %175 = zext i1 %174 to i32
  store i32 %175, i32* %21, align 4
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %177 = load i32, i32* %8, align 4
  %178 = call i64 @client_in_list(%struct.TYPE_11__* %176, i32 %177, i32* %33)
  %179 = icmp sge i64 %178, 0
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %22, align 4
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %182 = load i32, i32* %8, align 4
  %183 = call i64 @client_in_list(%struct.TYPE_11__* %181, i32 %182, i32* %36)
  %184 = icmp sge i64 %183, 0
  %185 = zext i1 %184 to i32
  store i32 %185, i32* %23, align 4
  %186 = load i32, i32* %21, align 4
  %187 = load i32, i32* %22, align 4
  %188 = add nsw i32 %186, %187
  %189 = load i32, i32* %23, align 4
  %190 = add nsw i32 %188, %189
  %191 = icmp eq i32 %190, 2
  %192 = zext i1 %191 to i32
  %193 = call i32 @ck_assert_msg(i32 %192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %194 = load i32, i32* %21, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %207, label %196

196:                                              ; preds = %148
  %197 = load i32*, i32** %10, align 8
  %198 = call i32 @id_closest(i32* %197, i32* %33, i32* %30)
  %199 = icmp eq i32 %198, 1
  %200 = zext i1 %199 to i32
  %201 = call i32 @ck_assert_msg(i32 %200, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %202 = load i32*, i32** %10, align 8
  %203 = call i32 @id_closest(i32* %202, i32* %36, i32* %30)
  %204 = icmp eq i32 %203, 1
  %205 = zext i1 %204 to i32
  %206 = call i32 @ck_assert_msg(i32 %205, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %237

207:                                              ; preds = %148
  %208 = load i32, i32* %22, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %221, label %210

210:                                              ; preds = %207
  %211 = load i32*, i32** %10, align 8
  %212 = call i32 @id_closest(i32* %211, i32* %30, i32* %33)
  %213 = icmp eq i32 %212, 1
  %214 = zext i1 %213 to i32
  %215 = call i32 @ck_assert_msg(i32 %214, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %216 = load i32*, i32** %10, align 8
  %217 = call i32 @id_closest(i32* %216, i32* %36, i32* %33)
  %218 = icmp eq i32 %217, 1
  %219 = zext i1 %218 to i32
  %220 = call i32 @ck_assert_msg(i32 %219, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %236

221:                                              ; preds = %207
  %222 = load i32, i32* %23, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %235, label %224

224:                                              ; preds = %221
  %225 = load i32*, i32** %10, align 8
  %226 = call i32 @id_closest(i32* %225, i32* %30, i32* %36)
  %227 = icmp eq i32 %226, 1
  %228 = zext i1 %227 to i32
  %229 = call i32 @ck_assert_msg(i32 %228, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %230 = load i32*, i32** %10, align 8
  %231 = call i32 @id_closest(i32* %230, i32* %33, i32* %36)
  %232 = icmp eq i32 %231, 1
  %233 = zext i1 %232 to i32
  %234 = call i32 @ck_assert_msg(i32 %233, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %235

235:                                              ; preds = %224, %221
  br label %236

236:                                              ; preds = %235, %210
  br label %237

237:                                              ; preds = %236, %196
  %238 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %238)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @randombytes(i32*, i32) #2

declare dso_local i32 @mark_all_good(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @rand(...) #2

declare dso_local i32 @ck_assert_msg(i32, i8*) #2

declare dso_local i32 @id_copy(i32*, i32) #2

declare dso_local i32 @mark_possible_bad(i32*) #2

declare dso_local i32 @addto_lists(i32*, i32, i64, i32*) #2

declare dso_local i64 @client_in_list(%struct.TYPE_11__*, i32, i32*) #2

declare dso_local i32 @id_closest(i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
