; ModuleID = '/home/carl/AnghaBench/toxcore/other/fun/extr_strkey.c_main.c'
source_filename = "/home/carl/AnghaBench/toxcore/other/fun/extr_strkey.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_SECRETKEYBYTES = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Desired key should have an even number of letters\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"The given key with the given offset exceed public key's length\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%2hhx\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [82 x i8] c"Usage: executable <byte offset> <desired hex string with even number of letters>\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Public key:  \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Private key: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %23 = load i32, i32* @crypto_box_SECRETKEYBYTES, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %26 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %85

31:                                               ; preds = %2
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @atoi(i8* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i64 @strlen(i8* %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = urem i64 %41, 2
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 @exit(i32 1) #4
  unreachable

48:                                               ; preds = %31
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi i32 [ 0, %51 ], [ %53, %52 ]
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %10, align 8
  %58 = udiv i64 %57, 2
  %59 = add i64 %56, %58
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ugt i64 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i32, i32* @stderr, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %67 = call i32 @exit(i32 1) #4
  unreachable

68:                                               ; preds = %54
  %69 = load i8*, i8** %12, align 8
  store i8* %69, i8** %14, align 8
  store i64 0, i64* %15, align 8
  br label %70

70:                                               ; preds = %81, %68
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i8*, i8** %14, align 8
  %76 = load i64, i64* %15, align 8
  %77 = getelementptr inbounds i8, i8* %28, i64 %76
  %78 = call i32 @sscanf(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %79 = load i64, i64* %15, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %15, align 8
  br label %81

81:                                               ; preds = %74
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  store i8* %83, i8** %14, align 8
  br label %70

84:                                               ; preds = %70
  br label %89

85:                                               ; preds = %2
  %86 = load i32, i32* @stdout, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0))
  %88 = call i32 @exit(i32 1) #4
  unreachable

89:                                               ; preds = %84
  %90 = load i64, i64* %10, align 8
  %91 = udiv i64 %90, 2
  store i64 %91, i64* %10, align 8
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %123

94:                                               ; preds = %89
  store i32 0, i32* %16, align 4
  br label %95

95:                                               ; preds = %118, %94
  %96 = call i32 @crypto_box_keypair(i8* %22, i8* %25)
  store i32 0, i32* %17, align 4
  br label %97

97:                                               ; preds = %114, %95
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %10, align 8
  %103 = sub i64 %101, %102
  %104 = icmp ule i64 %99, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %97
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %22, i64 %107
  %109 = load i64, i64* %10, align 8
  %110 = call i64 @memcmp(i8* %108, i8* %28, i64 %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  store i32 1, i32* %16, align 4
  br label %117

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %17, align 4
  br label %97

117:                                              ; preds = %112, %97
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  br i1 %121, label %95, label %122

122:                                              ; preds = %118
  br label %135

123:                                              ; preds = %89
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %22, i64 %125
  store i8* %126, i8** %18, align 8
  br label %127

127:                                              ; preds = %129, %123
  %128 = call i32 @crypto_box_keypair(i8* %22, i8* %25)
  br label %129

129:                                              ; preds = %127
  %130 = load i8*, i8** %18, align 8
  %131 = load i64, i64* %10, align 8
  %132 = call i64 @memcmp(i8* %130, i8* %28, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %127, label %134

134:                                              ; preds = %129
  br label %135

135:                                              ; preds = %134, %122
  %136 = load i32, i32* @stdout, align 4
  %137 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %138 = call i32 @print_key(i8* %22)
  %139 = load i32, i32* @stdout, align 4
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %141 = load i32, i32* @stdout, align 4
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %143 = call i32 @print_key(i8* %25)
  %144 = load i32, i32* @stdout, align 4
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  %146 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @atoi(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @sscanf(i8*, i8*, i8*) #2

declare dso_local i32 @crypto_box_keypair(i8*, i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i64) #2

declare dso_local i32 @print_key(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
