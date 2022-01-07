; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_pgp_unarmor.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_pgp_unarmor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"-----BEGIN PGP\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Version:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*, i64)* @pgp_unarmor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgp_unarmor(i8* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca [3 x i32], align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i32*, i32** %8, align 8
  store i32* %19, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %86, %72, %63, %54, %46, %4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %10, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = icmp ult i8* %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 61
  br label %34

34:                                               ; preds = %29, %23, %20
  %35 = phi i1 [ false, %23 ], [ false, %20 ], [ %33, %29 ]
  br i1 %35, label %36, label %106

36:                                               ; preds = %34
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 13
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %10, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %36
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %10, align 8
  br label %20

49:                                               ; preds = %41
  %50 = load i8*, i8** %10, align 8
  %51 = call i64 @strcspn(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %20

55:                                               ; preds = %49
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @strncmp(i8* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 14)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  store i32 1, i32* %13, align 4
  br label %63

63:                                               ; preds = %62, %58
  %64 = load i64, i64* %14, align 8
  %65 = add i64 %64, 1
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 %65
  store i8* %67, i8** %10, align 8
  br label %20

68:                                               ; preds = %55
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @strncmp(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %14, align 8
  %74 = add i64 %73, 1
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  store i8* %76, i8** %10, align 8
  br label %20

77:                                               ; preds = %68
  %78 = load i8*, i8** %10, align 8
  %79 = load i64, i64* %14, align 8
  %80 = sub i64 %79, 1
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 61
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 1, i32* %12, align 4
  br label %86

86:                                               ; preds = %85, %77
  %87 = load i32*, i32** %11, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = ptrtoint i32* %88 to i64
  %91 = ptrtoint i32* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 4
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @vlc_b64_decode_binary_to_buffer(i32* %87, i32 %96, i8* %97)
  %99 = load i32*, i32** %11, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %11, align 8
  %102 = load i64, i64* %14, align 8
  %103 = add i64 %102, 1
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 %103
  store i8* %105, i8** %10, align 8
  br label %20

106:                                              ; preds = %34
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 5
  %109 = load i8*, i8** %6, align 8
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = icmp ugt i8* %108, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %106
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %10, align 8
  %116 = load i8, i8* %114, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 61
  br i1 %118, label %119, label %120

119:                                              ; preds = %113, %106
  store i32 0, i32* %5, align 4
  br label %162

120:                                              ; preds = %113
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @vlc_b64_decode_binary_to_buffer(i32* %121, i32 3, i8* %122)
  %124 = icmp ne i32 %123, 3
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store i32 0, i32* %5, align 4
  br label %162

126:                                              ; preds = %120
  %127 = load i32*, i32** %8, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = ptrtoint i32* %128 to i64
  %131 = ptrtoint i32* %129 to i64
  %132 = sub i64 %130, %131
  %133 = sdiv exact i64 %132, 4
  %134 = trunc i64 %133 to i32
  %135 = call i64 @crc_octets(i32* %127, i32 %134)
  store i64 %135, i64* %16, align 8
  %136 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 16
  %139 = add nsw i32 0, %138
  %140 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 8
  %143 = add nsw i32 %139, %142
  %144 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %143, %145
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %17, align 8
  %148 = load i64, i64* %17, align 8
  %149 = load i64, i64* %16, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %126
  %152 = load i32*, i32** %11, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = ptrtoint i32* %152 to i64
  %155 = ptrtoint i32* %153 to i64
  %156 = sub i64 %154, %155
  %157 = sdiv exact i64 %156, 4
  br label %159

158:                                              ; preds = %126
  br label %159

159:                                              ; preds = %158, %151
  %160 = phi i64 [ %157, %151 ], [ 0, %158 ]
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %159, %125, %119
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @vlc_b64_decode_binary_to_buffer(i32*, i32, i8*) #1

declare dso_local i64 @crc_octets(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
