; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_implglue.c_import_private_key_impl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_implglue.c_import_private_key_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MP_OKAY = common dso_local global i64 0, align 8
@NTE_FAIL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PK_PRIVATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @import_private_key_impl(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 7
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 5
  %38 = call i64 @mp_init_multi(i32* %16, i32* %19, i32* %22, i32* %25, i32* %28, i32* %31, i32* %34, i32* %37, i32* null)
  %39 = load i64, i64* @MP_OKAY, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %5
  %42 = load i32, i32* @NTE_FAIL, align 4
  %43 = call i32 @SetLastError(i32 %42)
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %6, align 4
  br label %215

45:                                               ; preds = %5
  %46 = call i32 (...) @GetProcessHeap()
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 2, %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  %51 = ashr i32 %50, 1
  %52 = mul nsw i32 5, %51
  %53 = add nsw i32 %48, %52
  %54 = call i32* @HeapAlloc(i32 %46, i32 0, i32 %53)
  store i32* %54, i32** %12, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %6, align 4
  br label %215

59:                                               ; preds = %45
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = mul nsw i32 2, %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  %67 = ashr i32 %66, 1
  %68 = mul nsw i32 5, %67
  %69 = add nsw i32 %64, %68
  %70 = call i32 @min(i32 %62, i32 %69)
  %71 = call i32 @memcpy(i32* %60, i32* %61, i32 %70)
  %72 = load i32*, i32** %12, align 8
  store i32* %72, i32** %13, align 8
  %73 = load i32, i32* @PK_PRIVATE, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 8
  store i32 %73, i32* %76, align 4
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @reverse_bytes(i32* %77, i32 %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 7
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @mp_read_unsigned_bin(i32* %82, i32* %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %13, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  %93 = ashr i32 %92, 1
  %94 = call i32 @reverse_bytes(i32* %90, i32 %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 6
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  %101 = ashr i32 %100, 1
  %102 = call i32 @mp_read_unsigned_bin(i32* %97, i32* %98, i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  %105 = ashr i32 %104, 1
  %106 = load i32*, i32** %13, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %13, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  %112 = ashr i32 %111, 1
  %113 = call i32 @reverse_bytes(i32* %109, i32 %112)
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 5
  %117 = load i32*, i32** %13, align 8
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  %120 = ashr i32 %119, 1
  %121 = call i32 @mp_read_unsigned_bin(i32* %116, i32* %117, i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  %124 = ashr i32 %123, 1
  %125 = load i32*, i32** %13, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %13, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  %131 = ashr i32 %130, 1
  %132 = call i32 @reverse_bytes(i32* %128, i32 %131)
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 4
  %136 = load i32*, i32** %13, align 8
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  %139 = ashr i32 %138, 1
  %140 = call i32 @mp_read_unsigned_bin(i32* %135, i32* %136, i32 %139)
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  %143 = ashr i32 %142, 1
  %144 = load i32*, i32** %13, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32* %146, i32** %13, align 8
  %147 = load i32*, i32** %13, align 8
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  %150 = ashr i32 %149, 1
  %151 = call i32 @reverse_bytes(i32* %147, i32 %150)
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 3
  %155 = load i32*, i32** %13, align 8
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  %158 = ashr i32 %157, 1
  %159 = call i32 @mp_read_unsigned_bin(i32* %154, i32* %155, i32 %158)
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  %162 = ashr i32 %161, 1
  %163 = load i32*, i32** %13, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32* %165, i32** %13, align 8
  %166 = load i32*, i32** %13, align 8
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  %169 = ashr i32 %168, 1
  %170 = call i32 @reverse_bytes(i32* %166, i32 %169)
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  %174 = load i32*, i32** %13, align 8
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %175, 1
  %177 = ashr i32 %176, 1
  %178 = call i32 @mp_read_unsigned_bin(i32* %173, i32* %174, i32 %177)
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  %181 = ashr i32 %180, 1
  %182 = load i32*, i32** %13, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %13, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = load i32*, i32** %13, align 8
  %189 = load i32*, i32** %12, align 8
  %190 = ptrtoint i32* %188 to i64
  %191 = ptrtoint i32* %189 to i64
  %192 = sub i64 %190, %191
  %193 = sdiv exact i64 %192, 4
  %194 = sub nsw i64 %187, %193
  %195 = trunc i64 %194 to i32
  %196 = call i32 @min(i32 %185, i32 %195)
  store i32 %196, i32* %9, align 4
  %197 = load i32*, i32** %13, align 8
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @reverse_bytes(i32* %197, i32 %198)
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i32*, i32** %13, align 8
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @mp_read_unsigned_bin(i32* %202, i32* %203, i32 %204)
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @mp_set_int(i32* %208, i32 %209)
  %211 = call i32 (...) @GetProcessHeap()
  %212 = load i32*, i32** %12, align 8
  %213 = call i32 @HeapFree(i32 %211, i32 0, i32* %212)
  %214 = load i32, i32* @TRUE, align 4
  store i32 %214, i32* %6, align 4
  br label %215

215:                                              ; preds = %59, %57, %41
  %216 = load i32, i32* %6, align 4
  ret i32 %216
}

declare dso_local i64 @mp_init_multi(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @reverse_bytes(i32*, i32) #1

declare dso_local i32 @mp_read_unsigned_bin(i32*, i32*, i32) #1

declare dso_local i32 @mp_set_int(i32*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
