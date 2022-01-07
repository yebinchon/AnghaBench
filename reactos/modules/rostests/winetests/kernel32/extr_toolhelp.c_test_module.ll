; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_toolhelp.c_test_module.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_toolhelp.c_test_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Internal: bump found[] size\0A\00", align 1
@TH32CS_SNAPMODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Cannot create snapshot\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"PID=%x base=%p size=%x %s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"wrong returned process id\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Module %s is %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"listed more than once\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"not listed\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"mismatch in counting\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"shouldn't return a process\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"shouldn't return a thread\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"shouldn't return a module\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8**, i32)* @test_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_module(i64 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca [32 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %15 = call i32 @NUM_OF(i32* %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp uge i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @TH32CS_SNAPMODULE, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32* @pCreateToolhelp32Snapshot(i32 %20, i64 %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %35, %3
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %33
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %27

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32 32, i32* %39, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @pModule32First(i32* %40, %struct.TYPE_10__* %10)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %94

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %89, %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %46, i32 %48, i32 %50, i32 %52, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %83, %44
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @lstrcmpiA(i8* %71, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %12, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %66
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %12, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %62

86:                                               ; preds = %62
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** %7, align 8
  %91 = call i64 @pModule32Next(i32* %90, %struct.TYPE_10__* %10)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %44, label %93

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %38
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %119, %94
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 1
  %105 = zext i1 %104 to i32
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)
  %118 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %110, i8* %117)
  br label %119

119:                                              ; preds = %99
  %120 = load i32, i32* %12, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %95

122:                                              ; preds = %95
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %131, %122
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i32, i32* %12, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %129
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %12, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %123

134:                                              ; preds = %123
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32 32, i32* %135, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = call i64 @pModule32First(i32* %136, %struct.TYPE_10__* %10)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %184

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %179, %139
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %142, i32 %144, i32 %146, i32 %148, i32 %150)
  store i32 0, i32* %12, align 4
  br label %152

152:                                              ; preds = %173, %140
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %156, label %176

156:                                              ; preds = %152
  %157 = load i8**, i8*** %5, align 8
  %158 = load i32, i32* %12, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @lstrcmpiA(i8* %161, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %156
  %167 = load i32, i32* %12, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166, %156
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %12, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %12, align 4
  br label %152

176:                                              ; preds = %152
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %13, align 4
  br label %179

179:                                              ; preds = %176
  %180 = load i32*, i32** %7, align 8
  %181 = call i64 @pModule32Next(i32* %180, %struct.TYPE_10__* %10)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %140, label %183

183:                                              ; preds = %179
  br label %184

184:                                              ; preds = %183, %134
  store i32 0, i32* %12, align 4
  br label %185

185:                                              ; preds = %209, %184
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp ult i32 %186, %187
  br i1 %188, label %189, label %212

189:                                              ; preds = %185
  %190 = load i32, i32* %12, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 1
  %195 = zext i1 %194 to i32
  %196 = load i8**, i8*** %5, align 8
  %197 = load i32, i32* %12, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %196, i64 %198
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* %12, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)
  %208 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %200, i8* %207)
  br label %209

209:                                              ; preds = %189
  %210 = load i32, i32* %12, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %12, align 4
  br label %185

212:                                              ; preds = %185
  %213 = load i32, i32* %13, align 4
  %214 = icmp ne i32 %213, 0
  %215 = xor i1 %214, true
  %216 = zext i1 %215 to i32
  %217 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 4, i32* %218, align 4
  %219 = load i32*, i32** %7, align 8
  %220 = call i32 @pProcess32First(i32* %219, %struct.TYPE_9__* %8)
  %221 = icmp ne i32 %220, 0
  %222 = xor i1 %221, true
  %223 = zext i1 %222 to i32
  %224 = call i32 (i32, i8*, ...) @ok(i32 %223, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 4, i32* %225, align 4
  %226 = load i32*, i32** %7, align 8
  %227 = call i32 @pThread32First(i32* %226, %struct.TYPE_8__* %9)
  %228 = icmp ne i32 %227, 0
  %229 = xor i1 %228, true
  %230 = zext i1 %229 to i32
  %231 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %232 = load i32*, i32** %7, align 8
  %233 = call i32 @CloseHandle(i32* %232)
  %234 = load i32*, i32** %7, align 8
  %235 = call i64 @pModule32First(i32* %234, %struct.TYPE_10__* %10)
  %236 = icmp ne i64 %235, 0
  %237 = xor i1 %236, true
  %238 = zext i1 %237 to i32
  %239 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @NUM_OF(i32*) #1

declare dso_local i32* @pCreateToolhelp32Snapshot(i32, i64) #1

declare dso_local i64 @pModule32First(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @trace(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @lstrcmpiA(i8*, i32) #1

declare dso_local i64 @pModule32Next(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @pProcess32First(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @pThread32First(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
