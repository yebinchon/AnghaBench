; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_internet.c_parse_rootdocument.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_internet.c_parse_rootdocument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [20 x i8] c"(%s %08x %p %d %p)\0A\00", align 1
@PARSE_ROOTDOCUMENT = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@URL_PART_HOSTNAME = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i64*)* @parse_rootdocument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_rootdocument(i32 %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @debugstr_w(i32 %15)
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64*, i64** %11, align 8
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17, i64 %18, i64 %19, i64* %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i32* @get_protocol_info(i32 %22)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %5
  %27 = load i32*, i32** %12, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @PARSE_ROOTDOCUMENT, align 4
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64*, i64** %11, align 8
  %34 = call i32 @IInternetProtocolInfo_ParseUrl(i32* %27, i32 %28, i32 %29, i64 %30, i64 %31, i64 %32, i64* %33, i32 0)
  store i32 %34, i32* %14, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = call i32 @IInternetProtocolInfo_Release(i32* %35)
  %37 = load i32, i32* %14, align 4
  %38 = call i64 @SUCCEEDED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %6, align 4
  br label %150

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %5
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 32, i32* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ParseURLW(i32 %45, %struct.TYPE_3__* %13)
  %47 = call i64 @FAILED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @E_FAIL, align 4
  store i32 %50, i32* %6, align 4
  br label %150

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %148 [
    i32 130, label %54
    i32 129, label %54
    i32 128, label %54
  ]

54:                                               ; preds = %51, %51, %51
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %71, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 47
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 47
  br i1 %70, label %71, label %73

71:                                               ; preds = %64, %58, %54
  %72 = load i32, i32* @E_FAIL, align 4
  store i32 %72, i32* %6, align 4
  br label %150

73:                                               ; preds = %64
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 3
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %73
  store i64 0, i64* %10, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i64, i64* %9, align 8
  %82 = load i32, i32* @URL_PART_HOSTNAME, align 4
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @UrlGetPartW(i32 %80, i64 %81, i64* %10, i32 %82, i64 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i64*, i64** %11, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %88, %90
  %92 = add nsw i64 %91, 3
  %93 = load i64*, i64** %11, align 8
  store i64 %92, i64* %93, align 8
  br label %94

94:                                               ; preds = %87, %79
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @E_POINTER, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @S_FALSE, align 4
  store i32 %99, i32* %6, align 4
  br label %150

100:                                              ; preds = %94
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %6, align 4
  br label %150

102:                                              ; preds = %73
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 3
  %106 = load i64, i64* %10, align 8
  %107 = sub nsw i64 %106, %105
  store i64 %107, i64* %10, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %109, %111
  %113 = add nsw i64 %112, 3
  %114 = load i32, i32* @URL_PART_HOSTNAME, align 4
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @UrlGetPartW(i32 %108, i64 %113, i64* %10, i32 %114, i64 %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @E_POINTER, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %102
  %121 = load i32, i32* @S_FALSE, align 4
  store i32 %121, i32* %6, align 4
  br label %150

122:                                              ; preds = %102
  %123 = load i32, i32* %14, align 4
  %124 = call i64 @FAILED(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @E_FAIL, align 4
  store i32 %127, i32* %6, align 4
  br label %150

128:                                              ; preds = %122
  %129 = load i64*, i64** %11, align 8
  %130 = icmp ne i64* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load i64, i64* %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %132, %134
  %136 = add nsw i64 %135, 3
  %137 = load i64*, i64** %11, align 8
  store i64 %136, i64* %137, align 8
  br label %138

138:                                              ; preds = %131, %128
  %139 = load i64, i64* %9, align 8
  %140 = load i32, i32* %7, align 4
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, 3
  %144 = mul i64 %143, 4
  %145 = trunc i64 %144 to i32
  %146 = call i32 @memcpy(i64 %139, i32 %140, i32 %145)
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %6, align 4
  br label %150

148:                                              ; preds = %51
  %149 = load i32, i32* @E_FAIL, align 4
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %148, %138, %126, %120, %100, %98, %71, %49, %40
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i32 @TRACE(i8*, i32, i64, i64, i64, i64*) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32* @get_protocol_info(i32) #1

declare dso_local i32 @IInternetProtocolInfo_ParseUrl(i32*, i32, i32, i64, i64, i64, i64*, i32) #1

declare dso_local i32 @IInternetProtocolInfo_Release(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ParseURLW(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @UrlGetPartW(i32, i64, i64*, i32, i64) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
