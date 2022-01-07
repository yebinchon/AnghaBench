; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_implglue.c_encrypt_block_impl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_implglue.c_encrypt_block_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@CRYPT_OK = common dso_local global i32 0, align 4
@NTE_FAIL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NTE_NO_MEMORY = common dso_local global i32 0, align 4
@NTE_BAD_ALGID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encrypt_block_impl(i32 %0, i32 %1, %struct.TYPE_4__* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %149 [
    i32 131, label %18
    i32 138, label %34
    i32 137, label %34
    i32 132, label %50
    i32 136, label %66
    i32 135, label %66
    i32 134, label %66
    i32 133, label %66
    i32 130, label %82
    i32 129, label %82
    i32 128, label %82
  ]

18:                                               ; preds = %6
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32*, i32** %11, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = call i32 @rc2_ecb_encrypt(i32* %22, i32* %23, i32* %25)
  br label %33

27:                                               ; preds = %18
  %28 = load i32*, i32** %11, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = call i32 @rc2_ecb_decrypt(i32* %28, i32* %29, i32* %31)
  br label %33

33:                                               ; preds = %27, %21
  br label %153

34:                                               ; preds = %6, %6
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = call i32 @des3_ecb_encrypt(i32* %38, i32* %39, i32* %41)
  br label %49

43:                                               ; preds = %34
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = call i32 @des3_ecb_decrypt(i32* %44, i32* %45, i32* %47)
  br label %49

49:                                               ; preds = %43, %37
  br label %153

50:                                               ; preds = %6
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = call i32 @des_ecb_encrypt(i32* %54, i32* %55, i32* %57)
  br label %65

59:                                               ; preds = %50
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = call i32 @des_ecb_decrypt(i32* %60, i32* %61, i32* %63)
  br label %65

65:                                               ; preds = %59, %53
  br label %153

66:                                               ; preds = %6, %6, %6, %6
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32*, i32** %11, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = call i32 @aes_ecb_encrypt(i32* %70, i32* %71, i32* %73)
  br label %81

75:                                               ; preds = %66
  %76 = load i32*, i32** %11, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = call i32 @aes_ecb_decrypt(i32* %76, i32* %77, i32* %79)
  br label %81

81:                                               ; preds = %75, %69
  br label %153

82:                                               ; preds = %6, %6, %6
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = call i32 @mp_count_bits(i32* %85)
  %87 = add nsw i32 %86, 7
  %88 = sdiv i32 %87, 8
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %14, align 8
  store i64 %89, i64* %15, align 8
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %82
  %93 = load i32*, i32** %11, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @rsa_exptmod(i32* %93, i64 %94, i32* %95, i64* %15, i32 %96, %struct.TYPE_5__* %98)
  %100 = load i32, i32* @CRYPT_OK, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = load i32, i32* @NTE_FAIL, align 4
  %104 = call i32 @SetLastError(i32 %103)
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %7, align 4
  br label %155

106:                                              ; preds = %92
  %107 = load i32*, i32** %12, align 8
  %108 = load i64, i64* %15, align 8
  %109 = call i32 @reverse_bytes(i32* %107, i64 %108)
  br label %148

110:                                              ; preds = %82
  %111 = call i32 (...) @GetProcessHeap()
  %112 = load i64, i64* %14, align 8
  %113 = call i32* @HeapAlloc(i32 %111, i32 0, i64 %112)
  store i32* %113, i32** %16, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %110
  %117 = load i32, i32* @NTE_NO_MEMORY, align 4
  %118 = call i32 @SetLastError(i32 %117)
  %119 = load i32, i32* @FALSE, align 4
  store i32 %119, i32* %7, align 4
  br label %155

120:                                              ; preds = %110
  %121 = load i32*, i32** %16, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = load i64, i64* %14, align 8
  %124 = call i32 @memcpy(i32* %121, i32* %122, i64 %123)
  %125 = load i32*, i32** %16, align 8
  %126 = load i64, i64* %14, align 8
  %127 = call i32 @reverse_bytes(i32* %125, i64 %126)
  %128 = load i32*, i32** %16, align 8
  %129 = load i64, i64* %14, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = call i32 @rsa_exptmod(i32* %128, i64 %129, i32* %130, i64* %15, i32 %131, %struct.TYPE_5__* %133)
  %135 = load i32, i32* @CRYPT_OK, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %120
  %138 = call i32 (...) @GetProcessHeap()
  %139 = load i32*, i32** %16, align 8
  %140 = call i32 @HeapFree(i32 %138, i32 0, i32* %139)
  %141 = load i32, i32* @NTE_FAIL, align 4
  %142 = call i32 @SetLastError(i32 %141)
  %143 = load i32, i32* @FALSE, align 4
  store i32 %143, i32* %7, align 4
  br label %155

144:                                              ; preds = %120
  %145 = call i32 (...) @GetProcessHeap()
  %146 = load i32*, i32** %16, align 8
  %147 = call i32 @HeapFree(i32 %145, i32 0, i32* %146)
  br label %148

148:                                              ; preds = %144, %106
  br label %153

149:                                              ; preds = %6
  %150 = load i32, i32* @NTE_BAD_ALGID, align 4
  %151 = call i32 @SetLastError(i32 %150)
  %152 = load i32, i32* @FALSE, align 4
  store i32 %152, i32* %7, align 4
  br label %155

153:                                              ; preds = %148, %81, %65, %49, %33
  %154 = load i32, i32* @TRUE, align 4
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %153, %149, %137, %116, %102
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @rc2_ecb_encrypt(i32*, i32*, i32*) #1

declare dso_local i32 @rc2_ecb_decrypt(i32*, i32*, i32*) #1

declare dso_local i32 @des3_ecb_encrypt(i32*, i32*, i32*) #1

declare dso_local i32 @des3_ecb_decrypt(i32*, i32*, i32*) #1

declare dso_local i32 @des_ecb_encrypt(i32*, i32*, i32*) #1

declare dso_local i32 @des_ecb_decrypt(i32*, i32*, i32*) #1

declare dso_local i32 @aes_ecb_encrypt(i32*, i32*, i32*) #1

declare dso_local i32 @aes_ecb_decrypt(i32*, i32*, i32*) #1

declare dso_local i32 @mp_count_bits(i32*) #1

declare dso_local i32 @rsa_exptmod(i32*, i64, i32*, i64*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @reverse_bytes(i32*, i64) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
