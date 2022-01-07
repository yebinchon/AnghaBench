; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_OpenPort.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_OpenPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@have_com = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"got %u with %u and %p (expected '!= 0')\0A\00", align 1
@have_lpt = common dso_local global i64* null, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"got %u with %u and %p (expected '!= 0' or '0' with ERROR_ACCESS_DENIED)\0A\00", align 1
@have_file = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"got %u with %u and %p (expected '!= 0' and '!= %p')\0A\00", align 1
@does_not_existW = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"got %u with 0x%x and %p (expected '0' and 0xdeadbeef)\0A\00", align 1
@emptyW = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_OpenPort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_OpenPort() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64* null, i64** %3, align 8
  %6 = load i64*, i64** @have_com, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %0
  %11 = load i64*, i64** @have_com, align 8
  store i64* %11, i64** %3, align 8
  store i64 3735928559, i64* %1, align 8
  %12 = call i32 @SetLastError(i32 -559038737)
  %13 = load i64*, i64** %3, align 8
  %14 = call i32 @pOpenPort(i64* %13, i64* %1)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i64 (...) @GetLastError()
  %18 = load i64, i64* %1, align 8
  %19 = call i32 (i32, i8*, i32, i64, i64, ...) @ok(i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17, i64 %18)
  store i64 3735928559, i64* %2, align 8
  %20 = call i32 @SetLastError(i32 -559038737)
  %21 = load i64*, i64** %3, align 8
  %22 = call i32 @pOpenPort(i64* %21, i64* %2)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 (...) @GetLastError()
  %26 = load i64, i64* %2, align 8
  %27 = call i32 (i32, i8*, i32, i64, i64, ...) @ok(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25, i64 %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %10
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @pClosePort(i64 %31)
  br label %33

33:                                               ; preds = %30, %10
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i64, i64* %2, align 8
  %38 = load i64, i64* %1, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* %2, align 8
  %42 = call i32 @pClosePort(i64 %41)
  br label %43

43:                                               ; preds = %40, %36, %33
  br label %44

44:                                               ; preds = %43, %0
  %45 = load i64*, i64** @have_lpt, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %99

49:                                               ; preds = %44
  %50 = load i64*, i64** @have_lpt, align 8
  store i64* %50, i64** %3, align 8
  store i64 3735928559, i64* %1, align 8
  %51 = call i32 @SetLastError(i32 -559038737)
  %52 = load i64*, i64** %3, align 8
  %53 = call i32 @pOpenPort(i64* %52, i64* %1)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %49
  %57 = call i64 (...) @GetLastError()
  %58 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %59 = icmp eq i64 %57, %58
  br label %60

60:                                               ; preds = %56, %49
  %61 = phi i1 [ true, %49 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %4, align 4
  %64 = call i64 (...) @GetLastError()
  %65 = load i64, i64* %1, align 8
  %66 = call i32 (i32, i8*, i32, i64, i64, ...) @ok(i32 %62, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %63, i64 %64, i64 %65)
  store i64 3735928559, i64* %2, align 8
  %67 = call i32 @SetLastError(i32 -559038737)
  %68 = load i64*, i64** %3, align 8
  %69 = call i32 @pOpenPort(i64* %68, i64* %2)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %60
  %73 = call i64 (...) @GetLastError()
  %74 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %72, %60
  %77 = phi i1 [ true, %60 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %5, align 4
  %80 = call i64 (...) @GetLastError()
  %81 = load i64, i64* %2, align 8
  %82 = call i32 (i32, i8*, i32, i64, i64, ...) @ok(i32 %78, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %79, i64 %80, i64 %81)
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load i64, i64* %1, align 8
  %87 = call i32 @pClosePort(i64 %86)
  br label %88

88:                                               ; preds = %85, %76
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i64, i64* %2, align 8
  %93 = load i64, i64* %1, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i64, i64* %2, align 8
  %97 = call i32 @pClosePort(i64 %96)
  br label %98

98:                                               ; preds = %95, %91, %88
  br label %99

99:                                               ; preds = %98, %44
  %100 = load i64*, i64** @have_file, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %147

104:                                              ; preds = %99
  %105 = load i64*, i64** @have_file, align 8
  store i64* %105, i64** %3, align 8
  store i64 3735928559, i64* %1, align 8
  %106 = call i32 @SetLastError(i32 -559038737)
  %107 = load i64*, i64** %3, align 8
  %108 = call i32 @pOpenPort(i64* %107, i64* %1)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i64 (...) @GetLastError()
  %112 = load i64, i64* %1, align 8
  %113 = call i32 (i32, i8*, i32, i64, i64, ...) @ok(i32 %109, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %110, i64 %111, i64 %112)
  store i64 3735928559, i64* %2, align 8
  %114 = call i32 @SetLastError(i32 -559038737)
  %115 = load i64*, i64** %3, align 8
  %116 = call i32 @pOpenPort(i64* %115, i64* %2)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %104
  %120 = load i64, i64* %2, align 8
  %121 = load i64, i64* %1, align 8
  %122 = icmp ne i64 %120, %121
  br label %123

123:                                              ; preds = %119, %104
  %124 = phi i1 [ false, %104 ], [ %122, %119 ]
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %5, align 4
  %127 = call i64 (...) @GetLastError()
  %128 = load i64, i64* %2, align 8
  %129 = load i64, i64* %1, align 8
  %130 = call i32 (i32, i8*, i32, i64, i64, ...) @ok(i32 %125, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %126, i64 %127, i64 %128, i64 %129)
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load i64, i64* %1, align 8
  %135 = call i32 @pClosePort(i64 %134)
  br label %136

136:                                              ; preds = %133, %123
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load i64, i64* %2, align 8
  %141 = load i64, i64* %1, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i64, i64* %2, align 8
  %145 = call i32 @pClosePort(i64 %144)
  br label %146

146:                                              ; preds = %143, %139, %136
  br label %147

147:                                              ; preds = %146, %99
  store i64 3735928559, i64* %1, align 8
  %148 = call i32 @SetLastError(i32 -559038737)
  %149 = load i64*, i64** @does_not_existW, align 8
  %150 = call i32 @pOpenPort(i64* %149, i64* %1)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %147
  %154 = load i64, i64* %1, align 8
  %155 = icmp eq i64 %154, 3735928559
  br label %156

156:                                              ; preds = %153, %147
  %157 = phi i1 [ false, %147 ], [ %155, %153 ]
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* %4, align 4
  %160 = call i64 (...) @GetLastError()
  %161 = load i64, i64* %1, align 8
  %162 = call i32 (i32, i8*, i32, i64, i64, ...) @ok(i32 %158, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %159, i64 %160, i64 %161)
  %163 = load i32, i32* %4, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %156
  %166 = load i64, i64* %1, align 8
  %167 = call i32 @pClosePort(i64 %166)
  br label %168

168:                                              ; preds = %165, %156
  store i64 3735928559, i64* %1, align 8
  %169 = call i32 @SetLastError(i32 -559038737)
  %170 = load i64*, i64** @emptyW, align 8
  %171 = call i32 @pOpenPort(i64* %170, i64* %1)
  store i32 %171, i32* %4, align 4
  %172 = load i32, i32* %4, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %168
  %175 = load i64, i64* %1, align 8
  %176 = icmp eq i64 %175, 3735928559
  br label %177

177:                                              ; preds = %174, %168
  %178 = phi i1 [ false, %168 ], [ %176, %174 ]
  %179 = zext i1 %178 to i32
  %180 = load i32, i32* %4, align 4
  %181 = call i64 (...) @GetLastError()
  %182 = load i64, i64* %1, align 8
  %183 = call i32 (i32, i8*, i32, i64, i64, ...) @ok(i32 %179, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %180, i64 %181, i64 %182)
  %184 = load i32, i32* %4, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %177
  %187 = load i64, i64* %1, align 8
  %188 = call i32 @pClosePort(i64 %187)
  br label %189

189:                                              ; preds = %186, %177
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pOpenPort(i64*, i64*) #1

declare dso_local i32 @ok(i32, i8*, i32, i64, i64, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @pClosePort(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
