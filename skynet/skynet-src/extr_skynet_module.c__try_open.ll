; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_module.c__try_open.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_module.c__try_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modules = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid C service path\0A\00", align 1
@RTLD_NOW = common dso_local global i32 0, align 4
@RTLD_GLOBAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"try open %s failed : %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.modules*, i8*)* @_try_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_try_open(%struct.modules* %0, i8* %1) #0 {
  %3 = alloca %struct.modules*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.modules* %0, %struct.modules** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load %struct.modules*, %struct.modules** %3, align 8
  %16 = getelementptr inbounds %struct.modules, %struct.modules* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %7, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %11, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %12, align 8
  br label %30

30:                                               ; preds = %130, %2
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @memset(i8* %29, i32 0, i32 %31)
  br label %33

33:                                               ; preds = %38, %30
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 59
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  br label %33

41:                                               ; preds = %33
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %133

47:                                               ; preds = %41
  %48 = load i8*, i8** %6, align 8
  %49 = call i8* @strchr(i8* %48, i8 signext 59)
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8* %56, i8** %5, align 8
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %87, %57
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 63
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %73, %74
  br label %76

76:                                               ; preds = %72, %64
  %77 = phi i1 [ false, %64 ], [ %75, %72 ]
  br i1 %77, label %78, label %90

78:                                               ; preds = %76
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %29, i64 %85
  store i8 %83, i8* %86, align 1
  br label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %64

90:                                               ; preds = %76
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %29, i64 %92
  %94 = load i8*, i8** %4, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @memcpy(i8* %93, i8* %94, i64 %95)
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 63
  br i1 %103, label %104, label %120

104:                                              ; preds = %90
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %29, i64 %106
  %108 = load i64, i64* %8, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = sub nsw i32 %115, %116
  %118 = sub nsw i32 %117, 1
  %119 = call i32 @strncpy(i8* %109, i8* %114, i32 %118)
  br label %124

120:                                              ; preds = %90
  %121 = load i32, i32* @stderr, align 4
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %123 = call i32 @exit(i32 1) #4
  unreachable

124:                                              ; preds = %104
  %125 = load i32, i32* @RTLD_NOW, align 4
  %126 = load i32, i32* @RTLD_GLOBAL, align 4
  %127 = or i32 %125, %126
  %128 = call i8* @dlopen(i8* %29, i32 %127)
  store i8* %128, i8** %10, align 8
  %129 = load i8*, i8** %5, align 8
  store i8* %129, i8** %6, align 8
  br label %130

130:                                              ; preds = %124
  %131 = load i8*, i8** %10, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %30, label %133

133:                                              ; preds = %130, %46
  %134 = load i8*, i8** %10, align 8
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load i32, i32* @stderr, align 4
  %138 = load i8*, i8** %4, align 8
  %139 = call i8* (...) @dlerror()
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %138, i8* %139)
  br label %141

141:                                              ; preds = %136, %133
  %142 = load i8*, i8** %10, align 8
  %143 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %143)
  ret i8* %142
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i8* @dlopen(i8*, i32) #1

declare dso_local i8* @dlerror(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
