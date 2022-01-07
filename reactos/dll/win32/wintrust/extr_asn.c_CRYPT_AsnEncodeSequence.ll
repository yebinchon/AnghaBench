; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_asn.c_CRYPT_AsnEncodeSequence.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_asn.c_CRYPT_AsnEncodeSequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AsnEncodeSequenceItem = type { i64, i32, i32 (i64, i32*, i32, i32*, i64*)* }

@.str = private unnamed_addr constant [16 x i8] c"%p, %d, %p, %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ASN_SEQUENCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.AsnEncodeSequenceItem*, i64, i32*, i64*)* @CRYPT_AsnEncodeSequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_AsnEncodeSequence(i64 %0, %struct.AsnEncodeSequenceItem* %1, i64 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.AsnEncodeSequenceItem*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.AsnEncodeSequenceItem* %1, %struct.AsnEncodeSequenceItem** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64* %4, i64** %10, align 8
  store i64 0, i64* %13, align 8
  %16 = load %struct.AsnEncodeSequenceItem*, %struct.AsnEncodeSequenceItem** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i64*, i64** %10, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i8*, %struct.AsnEncodeSequenceItem*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.AsnEncodeSequenceItem* %16, i64 %17, i32* %18, i64 %20)
  store i64 0, i64* %12, align 8
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %66, %5
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ult i64 %27, %28
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %69

32:                                               ; preds = %30
  %33 = load %struct.AsnEncodeSequenceItem*, %struct.AsnEncodeSequenceItem** %7, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %33, i64 %34
  %36 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %35, i32 0, i32 2
  %37 = load i32 (i64, i32*, i32, i32*, i64*)*, i32 (i64, i32*, i32, i32*, i64*)** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.AsnEncodeSequenceItem*, %struct.AsnEncodeSequenceItem** %7, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %39, i64 %40
  %42 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.AsnEncodeSequenceItem*, %struct.AsnEncodeSequenceItem** %7, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %44, i64 %45
  %47 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %46, i32 0, i32 0
  %48 = call i32 %37(i64 %38, i32* null, i32 %43, i32* null, i64* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %32
  %52 = load %struct.AsnEncodeSequenceItem*, %struct.AsnEncodeSequenceItem** %7, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %52, i64 %53
  %55 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %10, align 8
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %51, %32
  %59 = load %struct.AsnEncodeSequenceItem*, %struct.AsnEncodeSequenceItem** %7, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %59, i64 %60
  %62 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %13, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %13, align 8
  br label %66

66:                                               ; preds = %58
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %12, align 8
  br label %23

69:                                               ; preds = %30
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %157

72:                                               ; preds = %69
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @CRYPT_EncodeLen(i64 %73, i32* null, i64* %14)
  %75 = load i64, i64* %14, align 8
  %76 = add i64 1, %75
  %77 = load i64, i64* %13, align 8
  %78 = add i64 %76, %77
  store i64 %78, i64* %15, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %72
  %82 = load i64, i64* %15, align 8
  %83 = load i64*, i64** %10, align 8
  store i64 %82, i64* %83, align 8
  br label %156

84:                                               ; preds = %72
  %85 = load i64*, i64** %10, align 8
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %15, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i64, i64* %15, align 8
  %91 = load i64*, i64** %10, align 8
  store i64 %90, i64* %91, align 8
  %92 = load i32, i32* @ERROR_MORE_DATA, align 4
  %93 = call i32 @SetLastError(i32 %92)
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %11, align 4
  br label %155

95:                                               ; preds = %84
  %96 = load i64, i64* %15, align 8
  %97 = load i64*, i64** %10, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i32, i32* @ASN_SEQUENCE, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  %101 = load i64, i64* %13, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @CRYPT_EncodeLen(i64 %101, i32* %102, i64* %14)
  %104 = load i64, i64* %14, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 %104
  store i32* %106, i32** %9, align 8
  store i64 0, i64* %12, align 8
  br label %107

107:                                              ; preds = %151, %95
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* %8, align 8
  %113 = icmp ult i64 %111, %112
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i1 [ false, %107 ], [ %113, %110 ]
  br i1 %115, label %116, label %154

116:                                              ; preds = %114
  %117 = load %struct.AsnEncodeSequenceItem*, %struct.AsnEncodeSequenceItem** %7, align 8
  %118 = load i64, i64* %12, align 8
  %119 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %117, i64 %118
  %120 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %119, i32 0, i32 2
  %121 = load i32 (i64, i32*, i32, i32*, i64*)*, i32 (i64, i32*, i32, i32*, i64*)** %120, align 8
  %122 = load i64, i64* %6, align 8
  %123 = load %struct.AsnEncodeSequenceItem*, %struct.AsnEncodeSequenceItem** %7, align 8
  %124 = load i64, i64* %12, align 8
  %125 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %123, i64 %124
  %126 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = load %struct.AsnEncodeSequenceItem*, %struct.AsnEncodeSequenceItem** %7, align 8
  %130 = load i64, i64* %12, align 8
  %131 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %129, i64 %130
  %132 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %131, i32 0, i32 0
  %133 = call i32 %121(i64 %122, i32* null, i32 %127, i32* %128, i64* %132)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %116
  %137 = load %struct.AsnEncodeSequenceItem*, %struct.AsnEncodeSequenceItem** %7, align 8
  %138 = load i64, i64* %12, align 8
  %139 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %137, i64 %138
  %140 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64*, i64** %10, align 8
  store i64 %141, i64* %142, align 8
  br label %143

143:                                              ; preds = %136, %116
  %144 = load %struct.AsnEncodeSequenceItem*, %struct.AsnEncodeSequenceItem** %7, align 8
  %145 = load i64, i64* %12, align 8
  %146 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %144, i64 %145
  %147 = getelementptr inbounds %struct.AsnEncodeSequenceItem, %struct.AsnEncodeSequenceItem* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i32*, i32** %9, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 %148
  store i32* %150, i32** %9, align 8
  br label %151

151:                                              ; preds = %143
  %152 = load i64, i64* %12, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %12, align 8
  br label %107

154:                                              ; preds = %114
  br label %155

155:                                              ; preds = %154, %89
  br label %156

156:                                              ; preds = %155, %81
  br label %157

157:                                              ; preds = %156, %69
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to %struct.AsnEncodeSequenceItem*
  %161 = call i32 (i8*, %struct.AsnEncodeSequenceItem*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.AsnEncodeSequenceItem* %160)
  %162 = load i32, i32* %11, align 4
  ret i32 %162
}

declare dso_local i32 @TRACE(i8*, %struct.AsnEncodeSequenceItem*, ...) #1

declare dso_local i32 @CRYPT_EncodeLen(i64, i32*, i64*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
