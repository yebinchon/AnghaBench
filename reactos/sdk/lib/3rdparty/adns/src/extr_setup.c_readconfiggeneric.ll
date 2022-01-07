; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_setup.c_readconfiggeneric.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_setup.c_readconfiggeneric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configcommandinfo = type { i32 (i32, i8*, i32, i8*)*, i64 }

@configcommandinfos = common dso_local global %struct.configcommandinfo* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"%s:%d: unknown configuration directive `%.*s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32 (i32, i32*, i8*, i32, i8*, i32)*, i32)* @readconfiggeneric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readconfiggeneric(i32 %0, i8* %1, i32 (i32, i32*, i8*, i32, i8*, i32)* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i32, i32*, i8*, i32, i8*, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2000 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.configcommandinfo*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 (i32, i32*, i8*, i32, i8*, i32)* %2, i32 (i32, i32*, i8*, i32, i8*, i32)** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %12, align 4
  br label %16

16:                                               ; preds = %165, %4
  %17 = load i32 (i32, i32*, i8*, i32, i8*, i32)*, i32 (i32, i32*, i8*, i32, i8*, i32)** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %12, align 4
  %21 = getelementptr inbounds [2000 x i8], [2000 x i8]* %9, i64 0, i64 0
  %22 = call i32 %17(i32 %18, i32* %8, i8* %19, i32 %20, i8* %21, i32 2000)
  store i32 %22, i32* %13, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %168

24:                                               ; preds = %16
  %25 = load i32, i32* %13, align 4
  %26 = icmp eq i32 %25, -2
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %165

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i32, i32* %13, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2000 x i8], [2000 x i8]* %9, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @ctype_whitespace(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %32, %29
  %41 = phi i1 [ false, %29 ], [ %39, %32 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %13, align 4
  br label %29

45:                                               ; preds = %40
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [2000 x i8], [2000 x i8]* %9, i64 0, i64 %47
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds [2000 x i8], [2000 x i8]* %9, i64 0, i64 0
  store i8* %49, i8** %10, align 8
  br label %50

50:                                               ; preds = %55, %45
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @ctype_whitespace(i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %10, align 8
  br label %50

58:                                               ; preds = %50
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 35
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %10, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63, %58
  br label %165

68:                                               ; preds = %63
  %69 = load i8*, i8** %10, align 8
  store i8* %69, i8** %11, align 8
  br label %70

70:                                               ; preds = %83, %68
  %71 = load i8*, i8** %11, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i8*, i8** %11, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @ctype_whitespace(i8 signext %77)
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %75, %70
  %82 = phi i1 [ false, %70 ], [ %80, %75 ]
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %11, align 8
  br label %70

86:                                               ; preds = %81
  %87 = load i8*, i8** %11, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %14, align 4
  %93 = load %struct.configcommandinfo*, %struct.configcommandinfo** @configcommandinfos, align 8
  store %struct.configcommandinfo* %93, %struct.configcommandinfo** %15, align 8
  br label %94

94:                                               ; preds = %127, %86
  %95 = load %struct.configcommandinfo*, %struct.configcommandinfo** %15, align 8
  %96 = getelementptr inbounds %struct.configcommandinfo, %struct.configcommandinfo* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %94
  %100 = load %struct.configcommandinfo*, %struct.configcommandinfo** %15, align 8
  %101 = getelementptr inbounds %struct.configcommandinfo, %struct.configcommandinfo* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @strlen(i64 %102)
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* %14, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %99
  %108 = load %struct.configcommandinfo*, %struct.configcommandinfo** %15, align 8
  %109 = getelementptr inbounds %struct.configcommandinfo, %struct.configcommandinfo* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memcmp(i64 %110, i8* %111, i32 %117)
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  br label %121

121:                                              ; preds = %107, %99
  %122 = phi i1 [ false, %99 ], [ %120, %107 ]
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %121, %94
  %125 = phi i1 [ false, %94 ], [ %123, %121 ]
  br i1 %125, label %126, label %130

126:                                              ; preds = %124
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.configcommandinfo*, %struct.configcommandinfo** %15, align 8
  %129 = getelementptr inbounds %struct.configcommandinfo, %struct.configcommandinfo* %128, i32 1
  store %struct.configcommandinfo* %129, %struct.configcommandinfo** %15, align 8
  br label %94

130:                                              ; preds = %124
  %131 = load %struct.configcommandinfo*, %struct.configcommandinfo** %15, align 8
  %132 = getelementptr inbounds %struct.configcommandinfo, %struct.configcommandinfo* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %147, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %5, align 4
  %137 = load i8*, i8** %6, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load i8*, i8** %11, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = ptrtoint i8* %139 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = trunc i64 %143 to i32
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @adns__diag(i32 %136, i32 -1, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %137, i32 %138, i32 %144, i8* %145)
  br label %165

147:                                              ; preds = %130
  br label %148

148:                                              ; preds = %153, %147
  %149 = load i8*, i8** %11, align 8
  %150 = load i8, i8* %149, align 1
  %151 = call i64 @ctype_whitespace(i8 signext %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i8*, i8** %11, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %11, align 8
  br label %148

156:                                              ; preds = %148
  %157 = load %struct.configcommandinfo*, %struct.configcommandinfo** %15, align 8
  %158 = getelementptr inbounds %struct.configcommandinfo, %struct.configcommandinfo* %157, i32 0, i32 0
  %159 = load i32 (i32, i8*, i32, i8*)*, i32 (i32, i8*, i32, i8*)** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = load i8*, i8** %6, align 8
  %162 = load i32, i32* %12, align 4
  %163 = load i8*, i8** %11, align 8
  %164 = call i32 %159(i32 %160, i8* %161, i32 %162, i8* %163)
  br label %165

165:                                              ; preds = %156, %135, %67, %27
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %16

168:                                              ; preds = %16
  ret void
}

declare dso_local i64 @ctype_whitespace(i8 signext) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @memcmp(i64, i8*, i32) #1

declare dso_local i32 @adns__diag(i32, i32, i32, i8*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
