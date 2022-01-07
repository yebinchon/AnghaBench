; ModuleID = '/home/carl/AnghaBench/sqlcipher/autoconf/tea/win/extr_nmakehlp.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/autoconf/tea/win/extr_nmakehlp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEM_FAILCRITICALERRORS = common dso_local global i32 0, align 4
@SEM_NOOPENFILEERRORBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"CL\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.3 = private unnamed_addr constant [117 x i8] c"usage: %s -c <compiler option>\0ATests for whether cl.exe supports an option\0Aexitcodes: 0 == no, 1 == yes, 2 == error\0A\00", align 1
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [117 x i8] c"usage: %s -l <linker option>\0ATests for whether link.exe supports an option\0Aexitcodes: 0 == no, 1 == yes, 2 == error\0A\00", align 1
@.str.5 = private unnamed_addr constant [108 x i8] c"usage: %s -f <string> <substring>\0AFind a substring within another\0Aexitcodes: 0 == no, 1 == yes, 2 == error\0A\00", align 1
@.str.6 = private unnamed_addr constant [112 x i8] c"usage: %s -s <substitutions file> <file>\0APerform a set of string map type substutitions on a file\0Aexitcodes: 0\0A\00", align 1
@.str.7 = private unnamed_addr constant [106 x i8] c"usage: %s -V filename matchstring\0AExtract a version from a file:\0Aeg: pkgIndex.tcl \22package ifneeded http\22\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [90 x i8] c"usage: %s -Q path\0AEmit the fully qualified path\0Aexitcodes: 0 == no, 1 == yes, 2 == error\0A\00", align 1
@.str.10 = private unnamed_addr constant [156 x i8] c"usage: %s -c|-f|-l|-Q|-s|-V ...\0AThis is a little helper app to equalize shell differences between WinNT and\0AWin9x and get nmake.exe to accomplish its job.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [300 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @SEM_FAILCRITICALERRORS, align 4
  %10 = load i32, i32* @SEM_NOOPENFILEERRORBOX, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @SetErrorMode(i32 %11)
  %13 = call i32 @SetEnvironmentVariable(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @SetEnvironmentVariable(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %160

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 45
  br i1 %23, label %24, label %160

24:                                               ; preds = %17
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %159 [
    i32 99, label %31
    i32 108, label %50
    i32 102, label %69
    i32 115, label %95
    i32 86, label %117
    i32 81, label %140
  ]

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 3
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @snprintf(i8* %35, i32 299, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %41 = call i32 @GetStdHandle(i32 %40)
  %42 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @WriteFile(i32 %41, i8* %42, i32 %43, i32* %7, i32* null)
  store i32 2, i32* %3, align 4
  br label %171

45:                                               ; preds = %31
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @CheckForCompilerFeature(i8* %48)
  store i32 %49, i32* %3, align 4
  br label %171

50:                                               ; preds = %24
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 3
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @snprintf(i8* %54, i32 299, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %60 = call i32 @GetStdHandle(i32 %59)
  %61 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @WriteFile(i32 %60, i8* %61, i32 %62, i32* %7, i32* null)
  store i32 2, i32* %3, align 4
  br label %171

64:                                               ; preds = %50
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @CheckForLinkerFeature(i8* %67)
  store i32 %68, i32* %3, align 4
  br label %171

69:                                               ; preds = %24
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @snprintf(i8* %73, i32 299, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0), i8* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %79 = call i32 @GetStdHandle(i32 %78)
  %80 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @WriteFile(i32 %79, i8* %80, i32 %81, i32* %7, i32* null)
  store i32 2, i32* %3, align 4
  br label %171

83:                                               ; preds = %69
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %171

87:                                               ; preds = %83
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 2
  %90 = load i8*, i8** %89, align 8
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 3
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @IsIn(i8* %90, i8* %93)
  store i32 %94, i32* %3, align 4
  br label %171

95:                                               ; preds = %24
  %96 = load i32, i32* %4, align 4
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @snprintf(i8* %99, i32 299, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.6, i64 0, i64 0), i8* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %105 = call i32 @GetStdHandle(i32 %104)
  %106 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @WriteFile(i32 %105, i8* %106, i32 %107, i32* %7, i32* null)
  store i32 2, i32* %3, align 4
  br label %171

109:                                              ; preds = %95
  %110 = load i8**, i8*** %5, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 2
  %112 = load i8*, i8** %111, align 8
  %113 = load i8**, i8*** %5, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 3
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @SubstituteFile(i8* %112, i8* %115)
  store i32 %116, i32* %3, align 4
  br label %171

117:                                              ; preds = %24
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 4
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %122 = load i8**, i8*** %5, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @snprintf(i8* %121, i32 299, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.7, i64 0, i64 0), i8* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %127 = call i32 @GetStdHandle(i32 %126)
  %128 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @WriteFile(i32 %127, i8* %128, i32 %129, i32* %7, i32* null)
  store i32 0, i32* %3, align 4
  br label %171

131:                                              ; preds = %117
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 2
  %134 = load i8*, i8** %133, align 8
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 3
  %137 = load i8*, i8** %136, align 8
  %138 = call i8* @GetVersionFromFile(i8* %134, i8* %137)
  %139 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %138)
  store i32 0, i32* %3, align 4
  br label %171

140:                                              ; preds = %24
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 3
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %145 = load i8**, i8*** %5, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @snprintf(i8* %144, i32 299, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.9, i64 0, i64 0), i8* %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %150 = call i32 @GetStdHandle(i32 %149)
  %151 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @WriteFile(i32 %150, i8* %151, i32 %152, i32* %7, i32* null)
  store i32 2, i32* %3, align 4
  br label %171

154:                                              ; preds = %140
  %155 = load i8**, i8*** %5, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 2
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @QualifyPath(i8* %157)
  store i32 %158, i32* %3, align 4
  br label %171

159:                                              ; preds = %24
  br label %160

160:                                              ; preds = %159, %17, %2
  %161 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %162 = load i8**, i8*** %5, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @snprintf(i8* %161, i32 299, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.10, i64 0, i64 0), i8* %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %167 = call i32 @GetStdHandle(i32 %166)
  %168 = getelementptr inbounds [300 x i8], [300 x i8]* %6, i64 0, i64 0
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @WriteFile(i32 %167, i8* %168, i32 %169, i32* %7, i32* null)
  store i32 2, i32* %3, align 4
  br label %171

171:                                              ; preds = %160, %154, %143, %131, %120, %109, %98, %87, %86, %72, %64, %53, %45, %34
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @SetErrorMode(i32) #1

declare dso_local i32 @SetEnvironmentVariable(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @WriteFile(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @GetStdHandle(i32) #1

declare dso_local i32 @CheckForCompilerFeature(i8*) #1

declare dso_local i32 @CheckForLinkerFeature(i8*) #1

declare dso_local i32 @IsIn(i8*, i8*) #1

declare dso_local i32 @SubstituteFile(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @GetVersionFromFile(i8*, i8*) #1

declare dso_local i32 @QualifyPath(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
