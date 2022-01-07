; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/stdlib/extr_senv.c__tsearchenv_s.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/stdlib/extr_senv.c__tsearchenv_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"buf[count] is too small\00", align 1
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_tsearchenv_s(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @MSVCRT_CHECK_PMT(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @MSVCRT_CHECK_PMT(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i64, i64* %9, align 8
  %33 = icmp ugt i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @MSVCRT_CHECK_PMT(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31, %25, %4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = call i32* (...) @_errno()
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %177

41:                                               ; preds = %31
  %42 = load i8*, i8** %8, align 8
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @GetFileAttributes(i8* %43)
  %45 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @MAX_PATH, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @GetFullPathName(i8* %48, i32 %49, i8* %50, i32* null)
  %52 = call i32 (...) @GetLastError()
  %53 = call i32 @_dosmaperr(i32 %52)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %177

54:                                               ; preds = %41
  %55 = load i8*, i8** %7, align 8
  %56 = call i8* @_tgetenv(i8* %55)
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOENT, align 4
  %61 = call i32 @_set_errno(i32 %60)
  %62 = load i32, i32* @ENOENT, align 4
  store i32 %62, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %177

63:                                               ; preds = %54
  %64 = load i8*, i8** %10, align 8
  store i8* %64, i8** %11, align 8
  br label %65

65:                                               ; preds = %175, %63
  %66 = load i8*, i8** %11, align 8
  store i8* %66, i8** %15, align 8
  br label %67

67:                                               ; preds = %79, %65
  %68 = load i8*, i8** %15, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** %15, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 59
  br label %77

77:                                               ; preds = %72, %67
  %78 = phi i1 [ false, %67 ], [ %76, %72 ]
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = load i8*, i8** %15, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %15, align 8
  br label %67

82:                                               ; preds = %77
  %83 = load i8*, i8** %11, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = icmp eq i8* %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** %11, align 8
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* @ENOENT, align 4
  %92 = call i32 @_set_errno(i32 %91)
  %93 = load i32, i32* @ENOENT, align 4
  store i32 %93, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %177

94:                                               ; preds = %86
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = mul i64 %100, 1
  %102 = trunc i64 %101 to i32
  %103 = call i32 @memcpy(i8* %19, i8* %95, i32 %102)
  %104 = load i8*, i8** %15, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = getelementptr inbounds i8, i8* %19, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 47
  br i1 %112, label %113, label %137

113:                                              ; preds = %94
  %114 = load i8*, i8** %15, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = getelementptr inbounds i8, i8* %19, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 92
  br i1 %122, label %123, label %137

123:                                              ; preds = %113
  %124 = load i8*, i8** %15, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = getelementptr inbounds i8, i8* %19, i64 %128
  store i8 92, i8* %129, align 1
  %130 = load i8*, i8** %15, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = add nsw i64 %134, 1
  %136 = getelementptr inbounds i8, i8* %19, i64 %135
  store i8 0, i8* %136, align 1
  br label %144

137:                                              ; preds = %113, %94
  %138 = load i8*, i8** %15, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = getelementptr inbounds i8, i8* %19, i64 %142
  store i8 0, i8* %143, align 1
  br label %144

144:                                              ; preds = %137, %123
  %145 = load i8*, i8** %6, align 8
  %146 = call i32 @_tcscat(i8* %19, i8* %145)
  %147 = call i64 @GetFileAttributes(i8* %19)
  %148 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %144
  %151 = call i32 @_tcslen(i8* %19)
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %9, align 8
  %155 = icmp ugt i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load i32, i32* @ERANGE, align 4
  %158 = call i32 @MSVCRT_INVALID_PMT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @ERANGE, align 4
  store i32 %159, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %177

160:                                              ; preds = %150
  %161 = load i8*, i8** %8, align 8
  %162 = call i32 @_tcscpy(i8* %161, i8* %19)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %177

163:                                              ; preds = %144
  %164 = load i8*, i8** %15, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i8*, i8** %15, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  br label %173

171:                                              ; preds = %163
  %172 = load i8*, i8** %15, align 8
  br label %173

173:                                              ; preds = %171, %168
  %174 = phi i8* [ %170, %168 ], [ %172, %171 ]
  store i8* %174, i8** %11, align 8
  br label %175

175:                                              ; preds = %173
  br i1 true, label %65, label %176

176:                                              ; preds = %175
  store i32 0, i32* %14, align 4
  br label %177

177:                                              ; preds = %176, %160, %156, %90, %59, %47, %37
  %178 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %14, align 4
  switch i32 %179, label %182 [
    i32 0, label %180
    i32 1, label %180
  ]

180:                                              ; preds = %177, %177
  %181 = load i32, i32* %5, align 4
  ret i32 %181

182:                                              ; preds = %177
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MSVCRT_CHECK_PMT(i32) #2

declare dso_local i32* @_errno(...) #2

declare dso_local i64 @GetFileAttributes(i8*) #2

declare dso_local i32 @GetFullPathName(i8*, i32, i8*, i32*) #2

declare dso_local i32 @_dosmaperr(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i8* @_tgetenv(i8*) #2

declare dso_local i32 @_set_errno(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @_tcscat(i8*, i8*) #2

declare dso_local i32 @_tcslen(i8*) #2

declare dso_local i32 @MSVCRT_INVALID_PMT(i8*, i32) #2

declare dso_local i32 @_tcscpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
