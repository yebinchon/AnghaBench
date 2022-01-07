; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_install.c_process_pending_renames.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_install.c_process_pending_renames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@rename_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"RegQueryValueExA failed %d\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@MOVEFILE_COPY_ALLOWED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"msitest\00", align 1
@TRUE = common dso_local global i32 0, align 4
@MOVEFILE_REPLACE_EXISTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to move file %s -> %s (%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to delete file %s (%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Expected a 'msitest' entry\0A\00", align 1
@REG_MULTI_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @process_pending_renames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_pending_renames(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @rename_ops, align 4
  %16 = call i64 @RegQueryValueExA(i32 %14, i32 %15, i32* null, i32* null, i32* null, i32* %8)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %9, align 8
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i8* @HeapAlloc(i32 %23, i32 0, i32 %25)
  store i8* %26, i8** %3, align 8
  %27 = call i32 (...) @GetProcessHeap()
  %28 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i8* @HeapAlloc(i32 %27, i32 %28, i32 %30)
  store i8* %31, i8** %6, align 8
  store i8* %31, i8** %7, align 8
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @rename_ops, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = call i64 @RegQueryValueExA(i32 %32, i32 %33, i32* null, i32* null, i32* %35, i32* %8)
  store i64 %36, i64* %9, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %9, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %1
  br label %223

50:                                               ; preds = %1
  %51 = load i8*, i8** %3, align 8
  store i8* %51, i8** %4, align 8
  br label %52

52:                                               ; preds = %185, %50
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %192

56:                                               ; preds = %52
  %57 = load i32, i32* @MOVEFILE_COPY_ALLOWED, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @strstr(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %56
  %68 = load i8*, i8** %7, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @lstrcpyA(i8* %68, i8* %69)
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = add nsw i32 %72, 1
  %74 = load i8*, i8** %7, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %7, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @lstrcpyA(i8* %77, i8* %78)
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = add nsw i32 %81, 1
  %83 = load i8*, i8** %7, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %7, align 8
  br label %185

86:                                               ; preds = %56
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %10, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 33
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load i32, i32* @MOVEFILE_REPLACE_EXISTING, align 4
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %5, align 8
  br label %98

98:                                               ; preds = %92, %86
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 92
  br i1 %103, label %104, label %125

104:                                              ; preds = %98
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 63
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 2
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 63
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 92
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 4
  store i8* %124, i8** %4, align 8
  br label %125

125:                                              ; preds = %122, %116, %110, %104, %98
  %126 = load i8*, i8** %5, align 8
  %127 = load i8, i8* %126, align 1
  %128 = icmp ne i8 %127, 0
  br i1 %128, label %129, label %166

129:                                              ; preds = %125
  %130 = load i8*, i8** %5, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 92
  br i1 %134, label %135, label %156

135:                                              ; preds = %129
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 63
  br i1 %140, label %141, label %156

141:                                              ; preds = %135
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 63
  br i1 %146, label %147, label %156

147:                                              ; preds = %141
  %148 = load i8*, i8** %5, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 3
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 92
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i8*, i8** %5, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 4
  store i8* %155, i8** %5, align 8
  br label %156

156:                                              ; preds = %153, %147, %141, %135, %129
  %157 = load i8*, i8** %4, align 8
  %158 = load i8*, i8** %5, align 8
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @MoveFileExA(i8* %157, i8* %158, i32 %159)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i8*, i8** %4, align 8
  %163 = load i8*, i8** %5, align 8
  %164 = call i32 (...) @GetLastError()
  %165 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %162, i8* %163, i32 %164)
  br label %184

166:                                              ; preds = %125
  %167 = load i8*, i8** %4, align 8
  %168 = call i32 @DeleteFileA(i8* %167)
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %166
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = call i64 @broken(i32 %175)
  %177 = icmp ne i64 %176, 0
  br label %178

178:                                              ; preds = %171, %166
  %179 = phi i1 [ true, %166 ], [ %177, %171 ]
  %180 = zext i1 %179 to i32
  %181 = load i8*, i8** %4, align 8
  %182 = call i32 (...) @GetLastError()
  %183 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %181, i32 %182)
  br label %184

184:                                              ; preds = %178, %156
  br label %185

185:                                              ; preds = %184, %67
  %186 = load i8*, i8** %5, align 8
  %187 = load i8*, i8** %5, align 8
  %188 = call i32 @strlen(i8* %187)
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %186, i64 %189
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  store i8* %191, i8** %4, align 8
  br label %52

192:                                              ; preds = %52
  %193 = load i32, i32* %10, align 4
  %194 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %195 = load i8*, i8** %6, align 8
  %196 = load i8, i8* %195, align 1
  %197 = icmp ne i8 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %192
  %199 = load i32, i32* %2, align 4
  %200 = load i32, i32* @rename_ops, align 4
  %201 = load i32, i32* @REG_MULTI_SZ, align 4
  %202 = load i8*, i8** %6, align 8
  %203 = bitcast i8* %202 to i32*
  %204 = load i8*, i8** %7, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 1
  %206 = load i8*, i8** %6, align 8
  %207 = ptrtoint i8* %205 to i64
  %208 = ptrtoint i8* %206 to i64
  %209 = sub i64 %207, %208
  %210 = trunc i64 %209 to i32
  %211 = call i32 @RegSetValueExA(i32 %199, i32 %200, i32 0, i32 %201, i32* %203, i32 %210)
  br label %216

212:                                              ; preds = %192
  %213 = load i32, i32* %2, align 4
  %214 = load i32, i32* @rename_ops, align 4
  %215 = call i32 @RegDeleteValueA(i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %212, %198
  %217 = call i32 (...) @GetProcessHeap()
  %218 = load i8*, i8** %3, align 8
  %219 = call i32 @HeapFree(i32 %217, i32 0, i8* %218)
  %220 = call i32 (...) @GetProcessHeap()
  %221 = load i8*, i8** %6, align 8
  %222 = call i32 @HeapFree(i32 %220, i32 0, i8* %221)
  br label %223

223:                                              ; preds = %216, %49
  ret void
}

declare dso_local i64 @RegQueryValueExA(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @lstrcpyA(i8*, i8*) #1

declare dso_local i32 @MoveFileExA(i8*, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @DeleteFileA(i8*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @RegSetValueExA(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @RegDeleteValueA(i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
