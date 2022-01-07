; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_log.c_log_struct_iovec_internal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_log.c_log_struct_iovec_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i64 }
%struct.msghdr = type { i32, %struct.iovec* }

@PROTECT_ERRNO = common dso_local global i32 0, align 4
@log_max_level = common dso_local global i64* null, align 8
@log_target = common dso_local global i64 0, align 8
@LOG_TARGET_NULL = common dso_local global i64 0, align 8
@LOG_FACMASK = common dso_local global i32 0, align 4
@log_facility = common dso_local global i32 0, align 4
@LOG_TARGET_AUTO = common dso_local global i32 0, align 4
@LOG_TARGET_JOURNAL_OR_KMSG = common dso_local global i32 0, align 4
@LOG_TARGET_JOURNAL = common dso_local global i32 0, align 4
@journal_fd = common dso_local global i64 0, align 8
@LINE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"MESSAGE=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_struct_iovec_internal(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, %struct.iovec* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.iovec*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.msghdr, align 8
  %23 = alloca %struct.iovec, align 8
  %24 = alloca %struct.iovec, align 8
  %25 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store %struct.iovec* %5, %struct.iovec** %14, align 8
  store i64 %6, i64* %15, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @LOG_REALM_REMOVE_LEVEL(i32 %26)
  store i64 %27, i64* %16, align 8
  %28 = load i32, i32* @PROTECT_ERRNO, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @LOG_PRI(i32 %29)
  %31 = load i64*, i64** @log_max_level, align 8
  %32 = load i64, i64* %16, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %30, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @_likely_(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %7
  %40 = load i64, i64* @log_target, align 8
  %41 = load i64, i64* @LOG_TARGET_NULL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39, %7
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @ERRNO_VALUE(i32 %44)
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %198

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @LOG_FACMASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @log_facility, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i64, i64* @log_target, align 8
  %58 = load i32, i32* @LOG_TARGET_AUTO, align 4
  %59 = load i32, i32* @LOG_TARGET_JOURNAL_OR_KMSG, align 4
  %60 = load i32, i32* @LOG_TARGET_JOURNAL, align 4
  %61 = call i64 @IN_SET(i64 %57, i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %141

63:                                               ; preds = %56
  %64 = load i64, i64* @journal_fd, align 8
  %65 = icmp sge i64 %64, 0
  br i1 %65, label %66, label %141

66:                                               ; preds = %63
  %67 = load i64, i64* %15, align 8
  %68 = mul i64 %67, 2
  %69 = add i64 1, %68
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %19, align 8
  %71 = alloca %struct.iovec, i64 %69, align 16
  store i64 %69, i64* %20, align 8
  %72 = load i32, i32* @LINE_MAX, align 4
  %73 = zext i32 %72 to i64
  %74 = alloca i8, i64 %73, align 16
  store i64 %73, i64* %21, align 8
  %75 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %22, i32 0, i32 0
  %76 = load i64, i64* %15, align 8
  %77 = mul i64 %76, 2
  %78 = add i64 1, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  %80 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %22, i32 0, i32 1
  store %struct.iovec* %71, %struct.iovec** %80, align 8
  %81 = trunc i64 %73 to i32
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i8*, i8** %13, align 8
  %87 = call i32 @log_do_header(i8* %74, i32 %81, i32 %82, i32 %83, i8* %84, i32 %85, i8* %86, i32* null, i32* null, i32* null, i32* null)
  %88 = getelementptr inbounds %struct.iovec, %struct.iovec* %71, i64 0
  %89 = call { i64, i64 } @IOVEC_MAKE_STRING(i8* %74)
  %90 = bitcast %struct.iovec* %23 to { i64, i64 }*
  %91 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %90, i32 0, i32 0
  %92 = extractvalue { i64, i64 } %89, 0
  store i64 %92, i64* %91, align 8
  %93 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %90, i32 0, i32 1
  %94 = extractvalue { i64, i64 } %89, 1
  store i64 %94, i64* %93, align 8
  %95 = bitcast %struct.iovec* %88 to i8*
  %96 = bitcast %struct.iovec* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %95, i8* align 8 %96, i64 16, i1 false)
  store i64 0, i64* %17, align 8
  br label %97

97:                                               ; preds = %124, %66
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* %15, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %97
  %102 = load i64, i64* %17, align 8
  %103 = mul i64 %102, 2
  %104 = add i64 1, %103
  %105 = getelementptr inbounds %struct.iovec, %struct.iovec* %71, i64 %104
  %106 = load %struct.iovec*, %struct.iovec** %14, align 8
  %107 = load i64, i64* %17, align 8
  %108 = getelementptr inbounds %struct.iovec, %struct.iovec* %106, i64 %107
  %109 = bitcast %struct.iovec* %105 to i8*
  %110 = bitcast %struct.iovec* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %109, i8* align 8 %110, i64 16, i1 false)
  %111 = load i64, i64* %17, align 8
  %112 = mul i64 %111, 2
  %113 = add i64 1, %112
  %114 = add i64 %113, 1
  %115 = getelementptr inbounds %struct.iovec, %struct.iovec* %71, i64 %114
  %116 = call { i64, i64 } @IOVEC_MAKE_STRING(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %117 = bitcast %struct.iovec* %24 to { i64, i64 }*
  %118 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %117, i32 0, i32 0
  %119 = extractvalue { i64, i64 } %116, 0
  store i64 %119, i64* %118, align 8
  %120 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %117, i32 0, i32 1
  %121 = extractvalue { i64, i64 } %116, 1
  store i64 %121, i64* %120, align 8
  %122 = bitcast %struct.iovec* %115 to i8*
  %123 = bitcast %struct.iovec* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %122, i8* align 8 %123, i64 16, i1 false)
  br label %124

124:                                              ; preds = %101
  %125 = load i64, i64* %17, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %17, align 8
  br label %97

127:                                              ; preds = %97
  %128 = load i64, i64* @journal_fd, align 8
  %129 = load i32, i32* @MSG_NOSIGNAL, align 4
  %130 = call i64 @sendmsg(i64 %128, %struct.msghdr* %22, i32 %129)
  %131 = icmp sge i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @ERRNO_VALUE(i32 %133)
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %137

136:                                              ; preds = %127
  store i32 0, i32* %25, align 4
  br label %137

137:                                              ; preds = %136, %132
  %138 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %25, align 4
  switch i32 %139, label %200 [
    i32 0, label %140
    i32 1, label %198
  ]

140:                                              ; preds = %137
  br label %141

141:                                              ; preds = %140, %63, %56
  store i64 0, i64* %17, align 8
  br label %142

142:                                              ; preds = %161, %141
  %143 = load i64, i64* %17, align 8
  %144 = load i64, i64* %15, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %142
  %147 = load %struct.iovec*, %struct.iovec** %14, align 8
  %148 = load i64, i64* %17, align 8
  %149 = getelementptr inbounds %struct.iovec, %struct.iovec* %147, i64 %148
  %150 = getelementptr inbounds %struct.iovec, %struct.iovec* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.iovec*, %struct.iovec** %14, align 8
  %153 = load i64, i64* %17, align 8
  %154 = getelementptr inbounds %struct.iovec, %struct.iovec* %152, i64 %153
  %155 = getelementptr inbounds %struct.iovec, %struct.iovec* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @memory_startswith(i64 %151, i64 %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %146
  br label %164

160:                                              ; preds = %146
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %17, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %17, align 8
  br label %142

164:                                              ; preds = %159, %142
  %165 = load i64, i64* %17, align 8
  %166 = load i64, i64* %15, align 8
  %167 = icmp uge i64 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i64 @_unlikely_(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @ERRNO_VALUE(i32 %172)
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %8, align 4
  br label %198

175:                                              ; preds = %164
  %176 = load %struct.iovec*, %struct.iovec** %14, align 8
  %177 = load i64, i64* %17, align 8
  %178 = getelementptr inbounds %struct.iovec, %struct.iovec* %176, i64 %177
  %179 = getelementptr inbounds %struct.iovec, %struct.iovec* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = call i64 @STRLEN(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %182 = add nsw i64 %180, %181
  %183 = load %struct.iovec*, %struct.iovec** %14, align 8
  %184 = load i64, i64* %17, align 8
  %185 = getelementptr inbounds %struct.iovec, %struct.iovec* %183, i64 %184
  %186 = getelementptr inbounds %struct.iovec, %struct.iovec* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i64 @STRLEN(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %189 = sub nsw i64 %187, %188
  %190 = call i8* @strndupa(i64 %182, i64 %189)
  store i8* %190, i8** %18, align 8
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %10, align 4
  %193 = load i8*, i8** %11, align 8
  %194 = load i32, i32* %12, align 4
  %195 = load i8*, i8** %13, align 8
  %196 = load i8*, i8** %18, align 8
  %197 = call i32 @log_dispatch_internal(i32 %191, i32 %192, i8* %193, i32 %194, i8* %195, i32* null, i32* null, i32* null, i32* null, i8* %196)
  store i32 %197, i32* %8, align 4
  br label %198

198:                                              ; preds = %175, %171, %137, %43
  %199 = load i32, i32* %8, align 4
  ret i32 %199

200:                                              ; preds = %137
  unreachable
}

declare dso_local i64 @LOG_REALM_REMOVE_LEVEL(i32) #1

declare dso_local i64 @_likely_(i32) #1

declare dso_local i64 @LOG_PRI(i32) #1

declare dso_local i32 @ERRNO_VALUE(i32) #1

declare dso_local i64 @IN_SET(i64, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @log_do_header(i8*, i32, i32, i32, i8*, i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local { i64, i64 } @IOVEC_MAKE_STRING(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @sendmsg(i64, %struct.msghdr*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @memory_startswith(i64, i64, i8*) #1

declare dso_local i64 @_unlikely_(i32) #1

declare dso_local i8* @strndupa(i64, i64) #1

declare dso_local i64 @STRLEN(i8*) #1

declare dso_local i32 @log_dispatch_internal(i32, i32, i8*, i32, i8*, i32*, i32*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
