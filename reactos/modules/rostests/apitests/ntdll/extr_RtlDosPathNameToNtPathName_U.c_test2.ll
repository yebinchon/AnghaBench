; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlDosPathNameToNtPathName_U.c_test2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlDosPathNameToNtPathName_U.c_test2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@.str = private unnamed_addr constant [36 x i8] c"RtlDosPathNameToNtPathName_U failed\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"input: \22%S\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i32] [i32 92, i32 63, i32 63, i32 92, i32 0], align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"NtName does not start with \22\\??\\\22\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"NtName does not match expected\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"input:  : %2Iu chars \22%S\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Expected: %2Iu chars \22%S\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Actual  : %2Iu chars \22%S\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i32] [i32 40, i32 110, i32 117, i32 108, i32 108, i32 41, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"Unexpected NtName (expected NULL)\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"PartName does not match expected\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Unexpected PartName (expected NULL).\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Actual  : %2Iu chars %S\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @test2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test2(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8** %8 to i32*
  %20 = call i32 @RtlDosPathNameToNtPathName_U(i8* %18, %struct.TYPE_4__* %7, i32* %19, i32* %9)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @check_result(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %179

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %30, 8
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @memcmp(i8* %34, i8* bitcast ([5 x i32]* @.str.2 to i8*), i64 8)
  %36 = icmp eq i64 %35, 0
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i1 [ false, %28 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @check_result(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %179

45:                                               ; preds = %37
  %46 = load i8*, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %94

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @wcslen(i8* %52)
  store i64 %53, i64* %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 8
  %57 = sdiv i32 %56, 2
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %48
  %63 = load i8*, i8** %11, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %12, align 8
  %66 = mul i64 %65, 2
  %67 = call i64 @memcmp(i8* %63, i8* %64, i64 %66)
  %68 = icmp eq i64 %67, 0
  br label %69

69:                                               ; preds = %62, %48
  %70 = phi i1 [ false, %48 ], [ %68, %62 ]
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @check_result(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %69
  %77 = load i8*, i8** %4, align 8
  %78 = call i64 @wcslen(i8* %77)
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %78, i8* %79)
  %81 = load i64, i64* %12, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %81, i8* %82)
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i8*, i8** %11, align 8
  br label %90

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i8* [ %88, %87 ], [ bitcast ([7 x i32]* @.str.8 to i8*), %89 ]
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 %84, i8* %91)
  br label %179

93:                                               ; preds = %69
  br label %117

94:                                               ; preds = %45
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 4
  store i8* %101, i8** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 8
  %105 = sdiv i32 %104, 2
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %15, align 8
  %107 = load i32, i32* @FALSE, align 4
  %108 = call i32 @check_result(i32 %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %109 = load i8*, i8** %4, align 8
  %110 = call i64 @wcslen(i8* %109)
  %111 = load i8*, i8** %4, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %110, i8* %111)
  %113 = load i64, i64* %15, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 %113, i8* %114)
  br label %116

116:                                              ; preds = %98, %94
  br label %117

117:                                              ; preds = %116, %93
  %118 = load i8*, i8** %6, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %164

120:                                              ; preds = %117
  %121 = load i8*, i8** %6, align 8
  %122 = call i64 @wcslen(i8* %121)
  store i64 %122, i64* %16, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i8*, i8** %8, align 8
  %127 = call i64 @wcslen(i8* %126)
  br label %129

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %125
  %130 = phi i64 [ %127, %125 ], [ 0, %128 ]
  store i64 %130, i64* %17, align 8
  %131 = load i64, i64* %16, align 8
  %132 = load i64, i64* %17, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i8*, i8** %8, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = call i64 @wcscmp(i8* %135, i8* %136)
  %138 = icmp eq i64 %137, 0
  br label %139

139:                                              ; preds = %134, %129
  %140 = phi i1 [ false, %129 ], [ %138, %134 ]
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @check_result(i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %163, label %146

146:                                              ; preds = %139
  %147 = load i8*, i8** %4, align 8
  %148 = call i64 @wcslen(i8* %147)
  %149 = load i8*, i8** %4, align 8
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %148, i8* %149)
  %151 = load i64, i64* %16, align 8
  %152 = load i8*, i8** %6, align 8
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %151, i8* %152)
  %154 = load i64, i64* %17, align 8
  %155 = load i64, i64* %17, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %146
  %158 = load i8*, i8** %8, align 8
  br label %160

159:                                              ; preds = %146
  br label %160

160:                                              ; preds = %159, %157
  %161 = phi i8* [ %158, %157 ], [ bitcast ([7 x i32]* @.str.8 to i8*), %159 ]
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i64 %154, i8* %161)
  br label %179

163:                                              ; preds = %139
  br label %179

164:                                              ; preds = %117
  %165 = load i8*, i8** %8, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = load i32, i32* @FALSE, align 4
  %169 = call i32 @check_result(i32 %168, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  %170 = load i8*, i8** %4, align 8
  %171 = call i64 @wcslen(i8* %170)
  %172 = load i8*, i8** %4, align 8
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %171, i8* %172)
  %174 = load i8*, i8** %8, align 8
  %175 = call i64 @wcslen(i8* %174)
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i64 %175, i8* %176)
  br label %178

178:                                              ; preds = %167, %164
  br label %179

179:                                              ; preds = %25, %44, %90, %160, %178, %163
  ret void
}

declare dso_local i32 @RtlDosPathNameToNtPathName_U(i8*, %struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @check_result(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i64 @wcslen(i8*) #1

declare dso_local i64 @wcscmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
