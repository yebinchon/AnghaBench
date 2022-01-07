; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdfn.c_FileIO.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdfn.c_FileIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i8* }

@FALSE = common dso_local global i8* null, align 8
@SECURITY_DESCRIPTOR_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Could not set security descriptor: %s\0A\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not %s file '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Could not allocate buffer for reading file\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"I/O Error: %s\0A\00", align 1
@MSG_216 = common dso_local global i32 0, align 4
@MSG_215 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FileIO(i8* %0, i8* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %10, align 8
  store i32* null, i32** %12, align 8
  %16 = load i8*, i8** @FALSE, align 8
  store i8* %16, i8** %15, align 8
  %17 = call i32* (...) @GetSID()
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %4
  %21 = load i32, i32* @SECURITY_DESCRIPTOR_REVISION, align 4
  %22 = call i64 @InitializeSecurityDescriptor(i32* %11, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32*, i32** %12, align 8
  %26 = load i8*, i8** @FALSE, align 8
  %27 = call i64 @SetSecurityDescriptorOwner(i32* %11, i32* %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 24, i32* %30, align 8
  %31 = load i8*, i8** @FALSE, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32* %11, i32** %33, align 8
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %10, align 8
  br label %37

34:                                               ; preds = %24, %20, %4
  %35 = call i32 (...) @WindowsErrorString()
  %36 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i8**, i8*** %7, align 8
  store i8* null, i8** %41, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @GENERIC_WRITE, align 4
  br label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @GENERIC_READ, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load i32, i32* @FILE_SHARE_READ, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @CREATE_ALWAYS, align 4
  br label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @OPEN_EXISTING, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %63 = call i64 @CreateFileU(i8* %43, i32 %51, i32 %52, %struct.TYPE_3__* %53, i32 %61, i32 %62, i32* null)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i8*, i8** %5, align 8
  %69 = icmp ne i8* %68, null
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %71, i8* %72)
  br label %125

74:                                               ; preds = %60
  %75 = load i8*, i8** %5, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i64, i64* %13, align 8
  %79 = load i8**, i8*** %7, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = call i8* @WriteFile(i64 %78, i8* %80, i32 %82, i32* %83, i32* null)
  store i8* %84, i8** %14, align 8
  br label %107

85:                                               ; preds = %74
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @GetFileSize(i64 %86, i32* null)
  %88 = load i32*, i32** %8, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @malloc(i32 %90)
  %92 = inttoptr i64 %91 to i8*
  %93 = load i8**, i8*** %7, align 8
  store i8* %92, i8** %93, align 8
  %94 = load i8**, i8*** %7, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %85
  %98 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %125

99:                                               ; preds = %85
  %100 = load i64, i64* %13, align 8
  %101 = load i8**, i8*** %7, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = call i8* @ReadFile(i64 %100, i8* %102, i32 %104, i32* %105, i32* null)
  store i8* %106, i8** %14, align 8
  br label %107

107:                                              ; preds = %99, %77
  %108 = load i8*, i8** %14, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = call i32 (...) @WindowsErrorString()
  %112 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  br label %125

113:                                              ; preds = %107
  %114 = load i8*, i8** %5, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @MSG_216, align 4
  br label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @MSG_215, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 @PrintInfoDebug(i32 0, i32 %121, i8* %122)
  %124 = load i8*, i8** @TRUE, align 8
  store i8* %124, i8** %15, align 8
  br label %125

125:                                              ; preds = %120, %110, %97, %67
  %126 = load i64, i64* %13, align 8
  %127 = call i32 @CloseHandle(i64 %126)
  %128 = load i8*, i8** %15, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %139, label %130

130:                                              ; preds = %125
  %131 = load i32*, i32** %8, align 8
  store i32 0, i32* %131, align 4
  %132 = load i8*, i8** %5, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i8**, i8*** %7, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @safe_free(i8* %136)
  br label %138

138:                                              ; preds = %134, %130
  br label %139

139:                                              ; preds = %138, %125
  %140 = load i8*, i8** %15, align 8
  ret i8* %140
}

declare dso_local i32* @GetSID(...) #1

declare dso_local i64 @InitializeSecurityDescriptor(i32*, i32) #1

declare dso_local i64 @SetSecurityDescriptorOwner(i32*, i32*, i8*) #1

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local i32 @WindowsErrorString(...) #1

declare dso_local i64 @CreateFileU(i8*, i32, i32, %struct.TYPE_3__*, i32, i32, i32*) #1

declare dso_local i8* @WriteFile(i64, i8*, i32, i32*, i32*) #1

declare dso_local i32 @GetFileSize(i64, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @ReadFile(i64, i8*, i32, i32*, i32*) #1

declare dso_local i32 @PrintInfoDebug(i32, i32, i8*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @safe_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
