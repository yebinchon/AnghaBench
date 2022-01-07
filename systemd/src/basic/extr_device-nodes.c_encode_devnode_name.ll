; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_device-nodes.c_encode_devnode_name.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_device-nodes.c_encode_devnode_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encode_devnode_name(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %130

19:                                               ; preds = %13
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %115, %19
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %118

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = call i32 @utf8_encoded_valid_unichar(i8* %30, i64 -1)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %62

34:                                               ; preds = %27
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = sub i64 %35, %36
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %130

44:                                               ; preds = %34
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @memcpy(i8* %47, i8* %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %8, align 8
  br label %114

62:                                               ; preds = %27
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 92
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load i8*, i8** %5, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = call i32 @whitelisted_char_for_devnode(i8 signext %73, i32* null)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %69, %62
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %9, align 8
  %79 = sub i64 %77, %78
  %80 = icmp ult i64 %79, 4
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %130

84:                                               ; preds = %76
  %85 = load i8*, i8** %6, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i8*, i8** %5, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 zeroext %91)
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %93, 4
  store i64 %94, i64* %9, align 8
  br label %113

95:                                               ; preds = %69
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* %9, align 8
  %98 = sub i64 %96, %97
  %99 = icmp ult i64 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %130

103:                                              ; preds = %95
  %104 = load i8*, i8** %5, align 8
  %105 = load i64, i64* %8, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = load i8*, i8** %6, align 8
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8 %107, i8* %110, align 1
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %9, align 8
  br label %113

113:                                              ; preds = %103, %84
  br label %114

114:                                              ; preds = %113, %44
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %8, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %8, align 8
  br label %20

118:                                              ; preds = %20
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* %9, align 8
  %121 = sub i64 %119, %120
  %122 = icmp ult i64 %121, 1
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %130

126:                                              ; preds = %118
  %127 = load i8*, i8** %6, align 8
  %128 = load i64, i64* %9, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8 0, i8* %129, align 1
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %126, %123, %100, %81, %41, %16
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @utf8_encoded_valid_unichar(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @whitelisted_char_for_devnode(i8 signext, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
