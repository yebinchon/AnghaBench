; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_sproto_pack.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_sproto_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sproto_pack(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i64], align 16
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64* null, i64** %11, align 8
  store i64* null, i64** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to i64*
  store i64* %21, i64** %15, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to i64*
  store i64* %23, i64** %16, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %114, %4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %117

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 8
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %28
  %36 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 0
  %37 = load i64*, i64** %15, align 8
  %38 = load i32, i32* %18, align 4
  %39 = sub nsw i32 8, %38
  %40 = call i32 @memcpy(i64* %36, i64* %37, i32 %39)
  store i32 0, i32* %19, align 4
  br label %41

41:                                               ; preds = %50, %35
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i32, i32* %19, align 4
  %47 = sub nsw i32 7, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 %48
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %19, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %19, align 4
  br label %41

53:                                               ; preds = %41
  %54 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 0
  store i64* %54, i64** %15, align 8
  br label %55

55:                                               ; preds = %53, %28
  %56 = load i64*, i64** %15, align 8
  %57 = load i64*, i64** %16, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @pack_seg(i64* %56, i64* %57, i32 %58, i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load i64*, i64** %15, align 8
  store i64* %67, i64** %11, align 8
  %68 = load i64*, i64** %16, align 8
  store i64* %68, i64** %12, align 8
  store i32 1, i32* %13, align 4
  br label %104

69:                                               ; preds = %55
  %70 = load i32, i32* %17, align 4
  %71 = icmp eq i32 %70, 8
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load i32, i32* %13, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp eq i32 %78, 256
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i64*, i64** %11, align 8
  %85 = load i64*, i64** %12, align 8
  %86 = call i32 @write_ff(i64* %84, i64* %85, i32 2048)
  br label %87

87:                                               ; preds = %83, %80
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %87, %75
  br label %103

89:                                               ; preds = %72, %69
  %90 = load i32, i32* %13, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i64*, i64** %11, align 8
  %97 = load i64*, i64** %12, align 8
  %98 = load i32, i32* %13, align 4
  %99 = mul nsw i32 %98, 8
  %100 = call i32 @write_ff(i64* %96, i64* %97, i32 %99)
  br label %101

101:                                              ; preds = %95, %92
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %101, %89
  br label %103

103:                                              ; preds = %102, %88
  br label %104

104:                                              ; preds = %103, %66
  %105 = load i64*, i64** %15, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 8
  store i64* %106, i64** %15, align 8
  %107 = load i32, i32* %17, align 4
  %108 = load i64*, i64** %16, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  store i64* %110, i64** %16, align 8
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 8
  store i32 %116, i32* %10, align 4
  br label %24

117:                                              ; preds = %24
  %118 = load i32, i32* %8, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %117
  %121 = load i32, i32* %13, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i64*, i64** %11, align 8
  %125 = load i64*, i64** %12, align 8
  %126 = call i32 @write_ff(i64* %124, i64* %125, i32 8)
  br label %146

127:                                              ; preds = %120
  %128 = load i32, i32* %13, align 4
  %129 = icmp sgt i32 %128, 1
  br i1 %129, label %130, label %145

130:                                              ; preds = %127
  %131 = load i64*, i64** %11, align 8
  %132 = load i64*, i64** %12, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64*, i64** %11, align 8
  %136 = load i8*, i8** %5, align 8
  %137 = bitcast i8* %136 to i64*
  %138 = ptrtoint i64* %135 to i64
  %139 = ptrtoint i64* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sdiv exact i64 %140, 8
  %142 = sub nsw i64 %134, %141
  %143 = trunc i64 %142 to i32
  %144 = call i32 @write_ff(i64* %131, i64* %132, i32 %143)
  br label %145

145:                                              ; preds = %130, %127
  br label %146

146:                                              ; preds = %145, %123
  br label %147

147:                                              ; preds = %146, %117
  %148 = load i32, i32* %14, align 4
  ret i32 %148
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @pack_seg(i64*, i64*, i32, i32) #1

declare dso_local i32 @write_ff(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
