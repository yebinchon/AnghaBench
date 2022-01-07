; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDISetMenu.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDISetMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"%p, frame menu %p, window menu %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"hmenuFrame is not a menu handle\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"hmenuWindow is not a menu handle\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"old frame menu %p, old window menu %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64)* @MDISetMenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MDISetMenu(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @GetParent(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %16, i64 %17)
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @IsMenu(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %147

27:                                               ; preds = %21, %3
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @IsMenu(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = call i32 @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %147

36:                                               ; preds = %30, %27
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.TYPE_4__* @get_client_info(i32 %37)
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %8, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i64 0, i64* %4, align 8
  br label %147

41:                                               ; preds = %36
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i8*, i64, i64, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %44, i64 %47)
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %41
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i64, i64* %6, align 8
  store i64 %58, i64* %4, align 8
  br label %147

59:                                               ; preds = %51
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @MDI_RestoreFrameMenu(i32 %65, i64 %68, i32 %71)
  br label %73

73:                                               ; preds = %64, %59
  br label %74

74:                                               ; preds = %73, %41
  %75 = load i64, i64* %7, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %114

77:                                               ; preds = %74
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %77
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %83
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %88
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %10, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %100 = call i32 @MDI_RefreshMenu(%struct.TYPE_4__* %99)
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %108 = call i32 @MDI_RefreshMenu(%struct.TYPE_4__* %107)
  br label %113

109:                                              ; preds = %88, %83
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %109, %93
  br label %114

114:                                              ; preds = %113, %77, %74
  %115 = load i64, i64* %6, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %146

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = load i64, i64* %6, align 8
  %120 = call i32 @SetMenu(i32 %118, i64 %119)
  %121 = load i64, i64* %6, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %117
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %11, align 8
  %130 = load i64, i64* %6, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %126
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @MDI_AugmentFrameMenu(i32 %138, i64 %141)
  br label %143

143:                                              ; preds = %137, %126
  %144 = load i64, i64* %11, align 8
  store i64 %144, i64* %4, align 8
  br label %147

145:                                              ; preds = %117
  br label %146

146:                                              ; preds = %145, %114
  store i64 0, i64* %4, align 8
  br label %147

147:                                              ; preds = %146, %143, %57, %40, %34, %25
  %148 = load i64, i64* %4, align 8
  ret i64 %148
}

declare dso_local i32 @GetParent(i32) #1

declare dso_local i32 @TRACE(i8*, i64, i64, ...) #1

declare dso_local i32 @IsMenu(i64) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local %struct.TYPE_4__* @get_client_info(i32) #1

declare dso_local i32 @MDI_RestoreFrameMenu(i32, i64, i32) #1

declare dso_local i32 @MDI_RefreshMenu(%struct.TYPE_4__*) #1

declare dso_local i32 @SetMenu(i32, i64) #1

declare dso_local i32 @MDI_AugmentFrameMenu(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
