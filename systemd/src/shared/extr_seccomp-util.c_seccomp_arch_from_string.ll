; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_seccomp-util.c_seccomp_arch_from_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_seccomp-util.c_seccomp_arch_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"native\00", align 1
@SCMP_ARCH_NATIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@SCMP_ARCH_X86 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"x86-64\00", align 1
@SCMP_ARCH_X86_64 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"x32\00", align 1
@SCMP_ARCH_X32 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@SCMP_ARCH_ARM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"arm64\00", align 1
@SCMP_ARCH_AARCH64 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@SCMP_ARCH_MIPS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"mips64\00", align 1
@SCMP_ARCH_MIPS64 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"mips64-n32\00", align 1
@SCMP_ARCH_MIPS64N32 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"mips-le\00", align 1
@SCMP_ARCH_MIPSEL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"mips64-le\00", align 1
@SCMP_ARCH_MIPSEL64 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"mips64-le-n32\00", align 1
@SCMP_ARCH_MIPSEL64N32 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"ppc\00", align 1
@SCMP_ARCH_PPC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"ppc64\00", align 1
@SCMP_ARCH_PPC64 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"ppc64-le\00", align 1
@SCMP_ARCH_PPC64LE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"s390\00", align 1
@SCMP_ARCH_S390 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"s390x\00", align 1
@SCMP_ARCH_S390X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seccomp_arch_from_string(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %152

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @assert(i32* %12)
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @streq(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @SCMP_ARCH_NATIVE, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  br label %151

20:                                               ; preds = %11
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @streq(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @SCMP_ARCH_X86, align 4
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  br label %150

27:                                               ; preds = %20
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @streq(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @SCMP_ARCH_X86_64, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  br label %149

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @streq(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @SCMP_ARCH_X32, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %148

41:                                               ; preds = %34
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @streq(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @SCMP_ARCH_ARM, align 4
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %147

48:                                               ; preds = %41
  %49 = load i8*, i8** %4, align 8
  %50 = call i64 @streq(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @SCMP_ARCH_AARCH64, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %146

55:                                               ; preds = %48
  %56 = load i8*, i8** %4, align 8
  %57 = call i64 @streq(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @SCMP_ARCH_MIPS, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %145

62:                                               ; preds = %55
  %63 = load i8*, i8** %4, align 8
  %64 = call i64 @streq(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @SCMP_ARCH_MIPS64, align 4
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  br label %144

69:                                               ; preds = %62
  %70 = load i8*, i8** %4, align 8
  %71 = call i64 @streq(i8* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @SCMP_ARCH_MIPS64N32, align 4
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  br label %143

76:                                               ; preds = %69
  %77 = load i8*, i8** %4, align 8
  %78 = call i64 @streq(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @SCMP_ARCH_MIPSEL, align 4
  %82 = load i32*, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  br label %142

83:                                               ; preds = %76
  %84 = load i8*, i8** %4, align 8
  %85 = call i64 @streq(i8* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @SCMP_ARCH_MIPSEL64, align 4
  %89 = load i32*, i32** %5, align 8
  store i32 %88, i32* %89, align 4
  br label %141

90:                                               ; preds = %83
  %91 = load i8*, i8** %4, align 8
  %92 = call i64 @streq(i8* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @SCMP_ARCH_MIPSEL64N32, align 4
  %96 = load i32*, i32** %5, align 8
  store i32 %95, i32* %96, align 4
  br label %140

97:                                               ; preds = %90
  %98 = load i8*, i8** %4, align 8
  %99 = call i64 @streq(i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* @SCMP_ARCH_PPC, align 4
  %103 = load i32*, i32** %5, align 8
  store i32 %102, i32* %103, align 4
  br label %139

104:                                              ; preds = %97
  %105 = load i8*, i8** %4, align 8
  %106 = call i64 @streq(i8* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @SCMP_ARCH_PPC64, align 4
  %110 = load i32*, i32** %5, align 8
  store i32 %109, i32* %110, align 4
  br label %138

111:                                              ; preds = %104
  %112 = load i8*, i8** %4, align 8
  %113 = call i64 @streq(i8* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32, i32* @SCMP_ARCH_PPC64LE, align 4
  %117 = load i32*, i32** %5, align 8
  store i32 %116, i32* %117, align 4
  br label %137

118:                                              ; preds = %111
  %119 = load i8*, i8** %4, align 8
  %120 = call i64 @streq(i8* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* @SCMP_ARCH_S390, align 4
  %124 = load i32*, i32** %5, align 8
  store i32 %123, i32* %124, align 4
  br label %136

125:                                              ; preds = %118
  %126 = load i8*, i8** %4, align 8
  %127 = call i64 @streq(i8* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* @SCMP_ARCH_S390X, align 4
  %131 = load i32*, i32** %5, align 8
  store i32 %130, i32* %131, align 4
  br label %135

132:                                              ; preds = %125
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %152

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %122
  br label %137

137:                                              ; preds = %136, %115
  br label %138

138:                                              ; preds = %137, %108
  br label %139

139:                                              ; preds = %138, %101
  br label %140

140:                                              ; preds = %139, %94
  br label %141

141:                                              ; preds = %140, %87
  br label %142

142:                                              ; preds = %141, %80
  br label %143

143:                                              ; preds = %142, %73
  br label %144

144:                                              ; preds = %143, %66
  br label %145

145:                                              ; preds = %144, %59
  br label %146

146:                                              ; preds = %145, %52
  br label %147

147:                                              ; preds = %146, %45
  br label %148

148:                                              ; preds = %147, %38
  br label %149

149:                                              ; preds = %148, %31
  br label %150

150:                                              ; preds = %149, %24
  br label %151

151:                                              ; preds = %150, %17
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %151, %132, %8
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @streq(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
