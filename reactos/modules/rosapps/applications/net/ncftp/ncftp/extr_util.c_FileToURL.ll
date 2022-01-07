; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_util.c_FileToURL.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_util.c_FileToURL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"ftp://\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"PASSWORD\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c":%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FileToURL(i8* %0, i64 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca [32 x i8], align 16
  %23 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @Strncpy(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %25)
  store i32 0, i32* %23, align 4
  %27 = load i8*, i8** %15, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %67

29:                                               ; preds = %9
  %30 = load i8*, i8** %15, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %29
  %36 = load i8*, i8** %15, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load i8*, i8** %15, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %39
  store i32 1, i32* %23, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @Strncat(i8* %44, i8* %45, i64 %46)
  %48 = load i8*, i8** %16, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load i8*, i8** %16, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i8*, i8** %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @Strncat(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = load i8*, i8** %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @Strncat(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %56, %50, %43
  %64 = load i8*, i8** %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @Strncat(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 %65)
  br label %67

67:                                               ; preds = %63, %39, %35, %29, %9
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %17, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @Strncat(i8* %68, i8* %69, i64 %70)
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 21
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load i32, i32* %18, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %79 = load i32, i32* %18, align 4
  %80 = call i32 @sprintf(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @Strncat(i8* %81, i8* %82, i64 %83)
  br label %85

85:                                               ; preds = %77, %74, %67
  %86 = load i8*, i8** %10, align 8
  %87 = call i64 @strlen(i8* %86)
  store i64 %87, i64* %19, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i64, i64* %19, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %21, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %19, align 8
  %93 = sub i64 %91, %92
  store i64 %93, i64* %20, align 8
  %94 = load i8*, i8** %21, align 8
  %95 = load i64, i64* %20, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = call i32 @PathCat(i8* %94, i64 %95, i8* %96, i8* %97)
  %99 = load i8*, i8** %14, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %171

101:                                              ; preds = %85
  %102 = load i8*, i8** %14, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %171

107:                                              ; preds = %101
  %108 = load i8*, i8** %14, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %171

113:                                              ; preds = %107
  %114 = load i8*, i8** %21, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = call i64 @strlen(i8* %116)
  %118 = call i64 @strncmp(i8* %114, i8* %115, i64 %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %113
  %121 = load i8*, i8** %21, align 8
  %122 = load i8*, i8** %21, align 8
  %123 = load i8*, i8** %14, align 8
  %124 = call i64 @strlen(i8* %123)
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8*, i8** %21, align 8
  %127 = call i64 @strlen(i8* %126)
  %128 = load i8*, i8** %14, align 8
  %129 = call i64 @strlen(i8* %128)
  %130 = sub i64 %127, %129
  %131 = add i64 %130, 1
  %132 = call i32 @memmove(i8* %121, i8* %125, i64 %131)
  br label %170

133:                                              ; preds = %113
  %134 = load i32, i32* %23, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %169

136:                                              ; preds = %133
  %137 = load i8*, i8** %21, align 8
  %138 = load i64, i64* %20, align 8
  %139 = sub i64 %138, 1
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  store i8 0, i8* %140, align 1
  %141 = load i8*, i8** %21, align 8
  %142 = load i64, i64* %20, align 8
  %143 = sub i64 %142, 2
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  store i8 0, i8* %144, align 1
  %145 = load i8*, i8** %21, align 8
  %146 = load i64, i64* %20, align 8
  %147 = sub i64 %146, 3
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  store i8 0, i8* %148, align 1
  %149 = load i8*, i8** %21, align 8
  %150 = load i64, i64* %20, align 8
  %151 = sub i64 %150, 4
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  store i8 0, i8* %152, align 1
  %153 = load i8*, i8** %21, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 4
  %155 = load i8*, i8** %21, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = load i8*, i8** %21, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  %159 = call i64 @strlen(i8* %158)
  %160 = call i32 @memmove(i8* %154, i8* %156, i64 %159)
  %161 = load i8*, i8** %21, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  store i8 47, i8* %162, align 1
  %163 = load i8*, i8** %21, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  store i8 37, i8* %164, align 1
  %165 = load i8*, i8** %21, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 2
  store i8 50, i8* %166, align 1
  %167 = load i8*, i8** %21, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 3
  store i8 70, i8* %168, align 1
  br label %169

169:                                              ; preds = %136, %133
  br label %170

170:                                              ; preds = %169, %120
  br label %171

171:                                              ; preds = %170, %107, %101, %85
  %172 = load i8*, i8** %10, align 8
  ret i8* %172
}

declare dso_local i32 @Strncpy(i8*, i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Strncat(i8*, i8*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @PathCat(i8*, i64, i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
