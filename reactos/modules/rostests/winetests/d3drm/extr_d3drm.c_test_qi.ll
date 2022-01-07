; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3drm/extr_d3drm.c_test_qi.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3drm/extr_d3drm.c_test_qi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qi_test = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Got hr %#x for test \22%s\22 %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Got hr %#x for test \22%s\22 %u, %u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Got refcount %u for test \22%s\22 %u, %u, expected %u.\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"Expected iface1 == iface2 for test \22%s\22 %u, %u. Got iface1 = %p, iface 2 = %p.\0A\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"Expected iface1 != iface2 for test \22%s\22 %u, %u. Got iface1 == iface2 == %p.\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Got refcount %u for test \22%s\22 %u, expected %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64, %struct.qi_test*, i64)* @test_qi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_qi(i8* %0, i32* %1, i64 %2, %struct.qi_test* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qi_test*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.qi_test* %3, %struct.qi_test** %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %16, align 8
  br label %18

18:                                               ; preds = %211, %5
  %19 = load i64, i64* %16, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %214

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.qi_test*, %struct.qi_test** %9, align 8
  %25 = load i64, i64* %16, align 8
  %26 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %24, i64 %25
  %27 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = bitcast i32** %13 to i8**
  %30 = call i64 @IUnknown_QueryInterface(i32* %23, i32 %28, i8** %29)
  store i64 %30, i64* %15, align 8
  %31 = load i64, i64* %15, align 8
  %32 = load %struct.qi_test*, %struct.qi_test** %9, align 8
  %33 = load i64, i64* %16, align 8
  %34 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %32, i64 %33
  %35 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %31, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %15, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %16, align 8
  %42 = call i32 (i32, i8*, i64, ...) @ok(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %39, i8* %40, i64 %41)
  %43 = load i64, i64* %15, align 8
  %44 = call i64 @SUCCEEDED(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %210

46:                                               ; preds = %22
  store i64 0, i64* %17, align 8
  br label %47

47:                                               ; preds = %183, %46
  %48 = load i64, i64* %17, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %186

51:                                               ; preds = %47
  %52 = load i32*, i32** %13, align 8
  %53 = load %struct.qi_test*, %struct.qi_test** %9, align 8
  %54 = load i64, i64* %17, align 8
  %55 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %53, i64 %54
  %56 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = bitcast i32** %14 to i8**
  %59 = call i64 @IUnknown_QueryInterface(i32* %52, i32 %57, i8** %58)
  store i64 %59, i64* %15, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load %struct.qi_test*, %struct.qi_test** %9, align 8
  %62 = load i64, i64* %17, align 8
  %63 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %61, i64 %62
  %64 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %60, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %15, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* %17, align 8
  %72 = call i32 (i32, i8*, i64, ...) @ok(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %68, i8* %69, i64 %70, i64 %71)
  %73 = load i64, i64* %15, align 8
  %74 = call i64 @SUCCEEDED(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %182

76:                                               ; preds = %51
  store i64 0, i64* %12, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.qi_test*, %struct.qi_test** %9, align 8
  %79 = load i64, i64* %17, align 8
  %80 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %78, i64 %79
  %81 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @IsEqualGUID(i64 %77, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load i64, i64* %12, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %12, align 8
  br label %88

88:                                               ; preds = %85, %76
  %89 = load %struct.qi_test*, %struct.qi_test** %9, align 8
  %90 = load i64, i64* %16, align 8
  %91 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %89, i64 %90
  %92 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.qi_test*, %struct.qi_test** %9, align 8
  %95 = load i64, i64* %17, align 8
  %96 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %94, i64 %95
  %97 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @IsEqualGUID(i64 %93, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = load i64, i64* %12, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %12, align 8
  br label %104

104:                                              ; preds = %101, %88
  %105 = load i32*, i32** %14, align 8
  %106 = call i64 @IUnknown_Release(i32* %105)
  store i64 %106, i64* %11, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* %12, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %11, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load i64, i64* %16, align 8
  %114 = load i64, i64* %17, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 (i32, i8*, i64, ...) @ok(i32 %110, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %111, i8* %112, i64 %113, i64 %114, i64 %115)
  %117 = load %struct.qi_test*, %struct.qi_test** %9, align 8
  %118 = load i64, i64* %16, align 8
  %119 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %117, i64 %118
  %120 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %155

123:                                              ; preds = %104
  %124 = load %struct.qi_test*, %struct.qi_test** %9, align 8
  %125 = load i64, i64* %17, align 8
  %126 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %124, i64 %125
  %127 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %123
  %131 = load %struct.qi_test*, %struct.qi_test** %9, align 8
  %132 = load i64, i64* %16, align 8
  %133 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %131, i64 %132
  %134 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.qi_test*, %struct.qi_test** %9, align 8
  %137 = load i64, i64* %17, align 8
  %138 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %136, i64 %137
  %139 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @IsEqualGUID(i64 %135, i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %130
  %144 = load i32*, i32** %13, align 8
  %145 = load i32*, i32** %14, align 8
  %146 = icmp eq i32* %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i8*, i8** %6, align 8
  %149 = ptrtoint i8* %148 to i64
  %150 = load i64, i64* %16, align 8
  %151 = load i64, i64* %17, align 8
  %152 = load i32*, i32** %13, align 8
  %153 = load i32*, i32** %14, align 8
  %154 = call i32 (i32, i8*, i64, ...) @ok(i32 %147, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i64 %149, i64 %150, i64 %151, i32* %152, i32* %153)
  br label %181

155:                                              ; preds = %130, %123, %104
  %156 = load %struct.qi_test*, %struct.qi_test** %9, align 8
  %157 = load i64, i64* %16, align 8
  %158 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %156, i64 %157
  %159 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %155
  %163 = load %struct.qi_test*, %struct.qi_test** %9, align 8
  %164 = load i64, i64* %17, align 8
  %165 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %163, i64 %164
  %166 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %162
  %170 = load i32*, i32** %13, align 8
  %171 = load i32*, i32** %14, align 8
  %172 = icmp ne i32* %170, %171
  %173 = zext i1 %172 to i32
  %174 = load i8*, i8** %6, align 8
  %175 = ptrtoint i8* %174 to i64
  %176 = load i64, i64* %16, align 8
  %177 = load i64, i64* %17, align 8
  %178 = load i32*, i32** %13, align 8
  %179 = call i32 (i32, i8*, i64, ...) @ok(i32 %173, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i64 %175, i64 %176, i64 %177, i32* %178)
  br label %180

180:                                              ; preds = %169, %162, %155
  br label %181

181:                                              ; preds = %180, %143
  br label %182

182:                                              ; preds = %181, %51
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %17, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %17, align 8
  br label %47

186:                                              ; preds = %47
  store i64 0, i64* %12, align 8
  %187 = load i64, i64* %8, align 8
  %188 = load %struct.qi_test*, %struct.qi_test** %9, align 8
  %189 = load i64, i64* %16, align 8
  %190 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %188, i64 %189
  %191 = getelementptr inbounds %struct.qi_test, %struct.qi_test* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = call i64 @IsEqualGUID(i64 %187, i64 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %186
  %196 = load i64, i64* %12, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %12, align 8
  br label %198

198:                                              ; preds = %195, %186
  %199 = load i32*, i32** %13, align 8
  %200 = call i64 @IUnknown_Release(i32* %199)
  store i64 %200, i64* %11, align 8
  %201 = load i64, i64* %11, align 8
  %202 = load i64, i64* %12, align 8
  %203 = icmp eq i64 %201, %202
  %204 = zext i1 %203 to i32
  %205 = load i64, i64* %11, align 8
  %206 = load i8*, i8** %6, align 8
  %207 = load i64, i64* %16, align 8
  %208 = load i64, i64* %12, align 8
  %209 = call i32 (i32, i8*, i64, ...) @ok(i32 %204, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i64 %205, i8* %206, i64 %207, i64 %208)
  br label %210

210:                                              ; preds = %198, %22
  br label %211

211:                                              ; preds = %210
  %212 = load i64, i64* %16, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %16, align 8
  br label %18

214:                                              ; preds = %18
  ret void
}

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IsEqualGUID(i64, i64) #1

declare dso_local i64 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
