; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_rsa.c_rsa_exptmod.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_rsa.c_rsa_exptmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@PK_PRIVATE = common dso_local global i32 0, align 4
@CRYPT_PK_NOT_PRIVATE = common dso_local global i32 0, align 4
@PK_PUBLIC = common dso_local global i32 0, align 4
@CRYPT_PK_INVALID_TYPE = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4
@MP_LT = common dso_local global i64 0, align 8
@CRYPT_PK_INVALID_SIZE = common dso_local global i32 0, align 4
@CRYPT_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@CRYPT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_exptmod(i8* %0, i64 %1, i8* %2, i64* %3, i32 %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %13, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @PK_PRIVATE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %6
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PK_PRIVATE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @CRYPT_PK_NOT_PRIVATE, align 4
  store i32 %29, i32* %7, align 4
  br label %157

30:                                               ; preds = %22, %6
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @PK_PRIVATE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @PK_PUBLIC, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @CRYPT_PK_INVALID_TYPE, align 4
  store i32 %39, i32* %7, align 4
  br label %157

40:                                               ; preds = %34, %30
  %41 = call i32 @mp_init_multi(i32* %14, i32* %15, i32* %16, i32* null)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* @MP_OKAY, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @mpi_to_ltc_error(i32 %45)
  store i32 %46, i32* %7, align 4
  br label %157

47:                                               ; preds = %40
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @mp_read_unsigned_bin(i32* %14, i8* %48, i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* @MP_OKAY, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %151

55:                                               ; preds = %47
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = call i64 @mp_cmp(i32* %57, i32* %14)
  %59 = load i64, i64* @MP_LT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @CRYPT_PK_INVALID_SIZE, align 4
  store i32 %62, i32* %18, align 4
  br label %154

63:                                               ; preds = %55
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @PK_PRIVATE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %114

67:                                               ; preds = %63
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 7
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = call i32 @mp_exptmod(i32* %14, i32* %69, i32* %71, i32* %15)
  %73 = call i32 @mpi_to_ltc_error(i32 %72)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* @MP_OKAY, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %151

77:                                               ; preds = %67
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 6
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = call i32 @mp_exptmod(i32* %14, i32* %79, i32* %81, i32* %16)
  %83 = call i32 @mpi_to_ltc_error(i32 %82)
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* @MP_OKAY, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %151

87:                                               ; preds = %77
  %88 = call i32 @mp_sub(i32* %15, i32* %16, i32* %14)
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* @MP_OKAY, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %151

92:                                               ; preds = %87
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  %97 = call i32 @mp_mulmod(i32* %14, i32* %94, i32* %96, i32* %14)
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* @MP_OKAY, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %151

101:                                              ; preds = %92
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = call i32 @mp_mul(i32* %14, i32* %103, i32* %14)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* @MP_OKAY, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %151

108:                                              ; preds = %101
  %109 = call i32 @mp_add(i32* %14, i32* %16, i32* %14)
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* @MP_OKAY, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %151

113:                                              ; preds = %108
  br label %124

114:                                              ; preds = %63
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = call i32 @mp_exptmod(i32* %14, i32* %116, i32* %118, i32* %14)
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* @MP_OKAY, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %151

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %113
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = call i64 @mp_unsigned_bin_size(i32* %126)
  store i64 %127, i64* %17, align 8
  %128 = load i64, i64* %17, align 8
  %129 = load i64*, i64** %11, align 8
  %130 = load i64, i64* %129, align 8
  %131 = icmp ugt i64 %128, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = load i32, i32* @CRYPT_BUFFER_OVERFLOW, align 4
  store i32 %133, i32* %18, align 4
  br label %154

134:                                              ; preds = %124
  %135 = load i64, i64* %17, align 8
  %136 = load i64*, i64** %11, align 8
  store i64 %135, i64* %136, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = load i64, i64* %17, align 8
  %139 = call i32 @memset(i8* %137, i32 0, i64 %138)
  %140 = load i8*, i8** %10, align 8
  %141 = load i64, i64* %17, align 8
  %142 = call i64 @mp_unsigned_bin_size(i32* %14)
  %143 = sub i64 %141, %142
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  %145 = call i32 @mp_to_unsigned_bin(i32* %14, i8* %144)
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* @MP_OKAY, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %134
  br label %151

149:                                              ; preds = %134
  %150 = load i32, i32* @CRYPT_OK, align 4
  store i32 %150, i32* %18, align 4
  br label %154

151:                                              ; preds = %148, %122, %112, %107, %100, %91, %86, %76, %54
  %152 = load i32, i32* %18, align 4
  %153 = call i32 @mpi_to_ltc_error(i32 %152)
  store i32 %153, i32* %18, align 4
  br label %154

154:                                              ; preds = %151, %149, %132, %61
  %155 = call i32 @mp_clear_multi(i32* %14, i32* %15, i32* %16, i32* null)
  %156 = load i32, i32* %18, align 4
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %154, %44, %38, %28
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local i32 @mp_init_multi(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mpi_to_ltc_error(i32) #1

declare dso_local i32 @mp_read_unsigned_bin(i32*, i8*, i32) #1

declare dso_local i64 @mp_cmp(i32*, i32*) #1

declare dso_local i32 @mp_exptmod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mp_sub(i32*, i32*, i32*) #1

declare dso_local i32 @mp_mulmod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mp_mul(i32*, i32*, i32*) #1

declare dso_local i32 @mp_add(i32*, i32*, i32*) #1

declare dso_local i64 @mp_unsigned_bin_size(i32*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @mp_to_unsigned_bin(i32*, i8*) #1

declare dso_local i32 @mp_clear_multi(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
