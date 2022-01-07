; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_dns-domain.c_dns_label_escape.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_dns-domain.c_dns_label_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DNS_LABEL_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_label_escape(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ule i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @DNS_LABEL_MAX, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %159

20:                                               ; preds = %13
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @ENOBUFS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %159

26:                                               ; preds = %20
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @assert(i8* %27)
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %8, align 8
  store i8* %31, i8** %10, align 8
  br label %32

32:                                               ; preds = %146, %26
  %33 = load i64, i64* %7, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %151

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @IN_SET(i8 signext %37, i8 signext 46, i8 signext 92)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %41, 3
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @ENOBUFS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %159

46:                                               ; preds = %40
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %10, align 8
  store i8 92, i8* %47, align 1
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %10, align 8
  store i8 %50, i8* %51, align 1
  %53 = load i64, i64* %9, align 8
  %54 = sub i64 %53, 2
  store i64 %54, i64* %9, align 8
  br label %146

55:                                               ; preds = %35
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @IN_SET(i8 signext %57, i8 signext 95, i8 signext 45)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %90, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sge i32 %63, 48
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sle i32 %68, 57
  br i1 %69, label %90, label %70

70:                                               ; preds = %65, %60
  %71 = load i8*, i8** %6, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sge i32 %73, 97
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i8*, i8** %6, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sle i32 %78, 122
  br i1 %79, label %90, label %80

80:                                               ; preds = %75, %70
  %81 = load i8*, i8** %6, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sge i32 %83, 65
  br i1 %84, label %85, label %103

85:                                               ; preds = %80
  %86 = load i8*, i8** %6, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sle i32 %88, 90
  br i1 %89, label %90, label %103

90:                                               ; preds = %85, %75, %65, %55
  %91 = load i64, i64* %9, align 8
  %92 = icmp ult i64 %91, 2
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @ENOBUFS, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %159

96:                                               ; preds = %90
  %97 = load i8*, i8** %6, align 8
  %98 = load i8, i8* %97, align 1
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %10, align 8
  store i8 %98, i8* %99, align 1
  %101 = load i64, i64* %9, align 8
  %102 = sub i64 %101, 1
  store i64 %102, i64* %9, align 8
  br label %145

103:                                              ; preds = %85, %80
  %104 = load i64, i64* %9, align 8
  %105 = icmp ult i64 %104, 5
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* @ENOBUFS, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %159

109:                                              ; preds = %103
  %110 = load i8*, i8** %10, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %10, align 8
  store i8 92, i8* %110, align 1
  %112 = load i8*, i8** %6, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = sdiv i32 %114, 100
  %116 = trunc i32 %115 to i8
  %117 = sext i8 %116 to i32
  %118 = add nsw i32 48, %117
  %119 = trunc i32 %118 to i8
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %10, align 8
  store i8 %119, i8* %120, align 1
  %122 = load i8*, i8** %6, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = sdiv i32 %124, 10
  %126 = srem i32 %125, 10
  %127 = trunc i32 %126 to i8
  %128 = sext i8 %127 to i32
  %129 = add nsw i32 48, %128
  %130 = trunc i32 %129 to i8
  %131 = load i8*, i8** %10, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %10, align 8
  store i8 %130, i8* %131, align 1
  %133 = load i8*, i8** %6, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = srem i32 %135, 10
  %137 = trunc i32 %136 to i8
  %138 = sext i8 %137 to i32
  %139 = add nsw i32 48, %138
  %140 = trunc i32 %139 to i8
  %141 = load i8*, i8** %10, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %10, align 8
  store i8 %140, i8* %141, align 1
  %143 = load i64, i64* %9, align 8
  %144 = sub i64 %143, 4
  store i64 %144, i64* %9, align 8
  br label %145

145:                                              ; preds = %109, %96
  br label %146

146:                                              ; preds = %145, %46
  %147 = load i8*, i8** %6, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %6, align 8
  %149 = load i64, i64* %7, align 8
  %150 = add i64 %149, -1
  store i64 %150, i64* %7, align 8
  br label %32

151:                                              ; preds = %32
  %152 = load i8*, i8** %10, align 8
  store i8 0, i8* %152, align 1
  %153 = load i8*, i8** %10, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %151, %106, %93, %43, %23, %17
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @IN_SET(i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
