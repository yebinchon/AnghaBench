; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_initialize.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"cancel\00", align 1
@no_argument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@POOL_INITIALIZE_START = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"csw\00", align 1
@POOL_INITIALIZE_CANCEL = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"-c cannot be combined with other options\0A\00", align 1
@POOL_INITIALIZE_SUSPEND = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"-s cannot be combined with other options\0A\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@optopt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"invalid option '%s'\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"missing pool name argument\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"-w cannot be used with -c or -s\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_initialize(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [4 x %struct.option], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %17 = load i64, i64* @B_FALSE, align 8
  store i64 %17, i64* %11, align 8
  %18 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %12, i64 0, i64 0
  %19 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %19, align 16
  %20 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 1
  %21 = load i32, i32* @no_argument, align 4
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %20, align 8
  %23 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 2
  store i32* null, i32** %23, align 16
  %24 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 3
  store i32 99, i32* %24, align 8
  %25 = getelementptr inbounds %struct.option, %struct.option* %18, i64 1
  %26 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %26, align 16
  %27 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 1
  %28 = load i32, i32* @no_argument, align 4
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %27, align 8
  %30 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 2
  store i32* null, i32** %30, align 16
  %31 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 3
  store i32 115, i32* %31, align 8
  %32 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %33 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %33, align 16
  %34 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 1
  %35 = load i32, i32* @no_argument, align 4
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %34, align 8
  %37 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 2
  store i32* null, i32** %37, align 16
  %38 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 3
  store i32 119, i32* %38, align 8
  %39 = getelementptr inbounds %struct.option, %struct.option* %32, i64 1
  %40 = bitcast %struct.option* %39 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %40, i8 0, i64 32, i1 false)
  %41 = getelementptr inbounds %struct.option, %struct.option* %39, i32 0, i32 1
  store i8 0, i8* %41, align 8
  %42 = load i64, i64* @POOL_INITIALIZE_START, align 8
  store i64 %42, i64* %13, align 8
  br label %43

43:                                               ; preds = %105, %2
  %44 = load i32, i32* %4, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds [4 x %struct.option], [4 x %struct.option]* %12, i64 0, i64 0
  %47 = call i32 @getopt_long(i32 %44, i8** %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.option* %46, i32* null)
  store i32 %47, i32* %6, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %106

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  switch i32 %50, label %105 [
    i32 99, label %51
    i32 115, label %67
    i32 119, label %83
    i32 63, label %85
  ]

51:                                               ; preds = %49
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* @POOL_INITIALIZE_START, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* @POOL_INITIALIZE_CANCEL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* @stderr, align 4
  %61 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* %61)
  %63 = load i64, i64* @B_FALSE, align 8
  %64 = call i32 @usage(i64 %63)
  br label %65

65:                                               ; preds = %59, %55, %51
  %66 = load i64, i64* @POOL_INITIALIZE_CANCEL, align 8
  store i64 %66, i64* %13, align 8
  br label %105

67:                                               ; preds = %49
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* @POOL_INITIALIZE_START, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @POOL_INITIALIZE_SUSPEND, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* @stderr, align 4
  %77 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* %77)
  %79 = load i64, i64* @B_FALSE, align 8
  %80 = call i32 @usage(i64 %79)
  br label %81

81:                                               ; preds = %75, %71, %67
  %82 = load i64, i64* @POOL_INITIALIZE_SUSPEND, align 8
  store i64 %82, i64* %13, align 8
  br label %105

83:                                               ; preds = %49
  %84 = load i64, i64* @B_TRUE, align 8
  store i64 %84, i64* %11, align 8
  br label %105

85:                                               ; preds = %49
  %86 = load i32, i32* @optopt, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* @stderr, align 4
  %90 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %91 = load i32, i32* @optopt, align 4
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* %90, i32 %91)
  br label %102

93:                                               ; preds = %85
  %94 = load i32, i32* @stderr, align 4
  %95 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i8**, i8*** %5, align 8
  %97 = load i64, i64* @optind, align 8
  %98 = sub i64 %97, 1
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* %95, i8* %100)
  br label %102

102:                                              ; preds = %93, %88
  %103 = load i64, i64* @B_FALSE, align 8
  %104 = call i32 @usage(i64 %103)
  br label %105

105:                                              ; preds = %102, %49, %83, %81, %65
  br label %43

106:                                              ; preds = %43
  %107 = load i64, i64* @optind, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = sub i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %4, align 4
  %112 = load i64, i64* @optind, align 8
  %113 = load i8**, i8*** %5, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 %112
  store i8** %114, i8*** %5, align 8
  %115 = load i32, i32* %4, align 4
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %117, label %123

117:                                              ; preds = %106
  %118 = load i32, i32* @stderr, align 4
  %119 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* %119)
  %121 = load i64, i64* @B_FALSE, align 8
  %122 = call i32 @usage(i64 %121)
  store i32 -1, i32* %3, align 4
  br label %196

123:                                              ; preds = %106
  %124 = load i64, i64* %11, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %123
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* @POOL_INITIALIZE_START, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i32, i32* @stderr, align 4
  %132 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* %132)
  %134 = load i64, i64* @B_FALSE, align 8
  %135 = call i32 @usage(i64 %134)
  br label %136

136:                                              ; preds = %130, %126, %123
  %137 = load i8**, i8*** %5, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 0
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %7, align 8
  %140 = load i32, i32* @g_zfs, align 4
  %141 = load i8*, i8** %7, align 8
  %142 = call i32* @zpool_open(i32 %140, i8* %141)
  store i32* %142, i32** %8, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  store i32 -1, i32* %3, align 4
  br label %196

146:                                              ; preds = %136
  %147 = call i32* (...) @fnvlist_alloc()
  store i32* %147, i32** %9, align 8
  %148 = load i32, i32* %4, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %160

150:                                              ; preds = %146
  %151 = load i32*, i32** %8, align 8
  %152 = call i32* @zpool_get_config(i32* %151, i32* null)
  store i32* %152, i32** %14, align 8
  %153 = load i32*, i32** %14, align 8
  %154 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %155 = call i32* @fnvlist_lookup_nvlist(i32* %153, i32 %154)
  store i32* %155, i32** %15, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = load i32*, i32** %15, align 8
  %158 = load i32*, i32** %9, align 8
  %159 = call i32 @zpool_collect_leaves(i32* %156, i32* %157, i32* %158)
  br label %177

160:                                              ; preds = %146
  store i32 1, i32* %16, align 4
  br label %161

161:                                              ; preds = %173, %160
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %4, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %161
  %166 = load i32*, i32** %9, align 8
  %167 = load i8**, i8*** %5, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @fnvlist_add_boolean(i32* %166, i8* %171)
  br label %173

173:                                              ; preds = %165
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %16, align 4
  br label %161

176:                                              ; preds = %161
  br label %177

177:                                              ; preds = %176, %150
  %178 = load i64, i64* %11, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load i32*, i32** %8, align 8
  %182 = load i64, i64* %13, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = call i32 @zpool_initialize_wait(i32* %181, i64 %182, i32* %183)
  store i32 %184, i32* %10, align 4
  br label %190

185:                                              ; preds = %177
  %186 = load i32*, i32** %8, align 8
  %187 = load i64, i64* %13, align 8
  %188 = load i32*, i32** %9, align 8
  %189 = call i32 @zpool_initialize(i32* %186, i64 %187, i32* %188)
  store i32 %189, i32* %10, align 4
  br label %190

190:                                              ; preds = %185, %180
  %191 = load i32*, i32** %9, align 8
  %192 = call i32 @fnvlist_free(i32* %191)
  %193 = load i32*, i32** %8, align 8
  %194 = call i32 @zpool_close(i32* %193)
  %195 = load i32, i32* %10, align 4
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %190, %145, %117
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i64) #2

declare dso_local i32* @zpool_open(i32, i8*) #2

declare dso_local i32* @fnvlist_alloc(...) #2

declare dso_local i32* @zpool_get_config(i32*, i32*) #2

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #2

declare dso_local i32 @zpool_collect_leaves(i32*, i32*, i32*) #2

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #2

declare dso_local i32 @zpool_initialize_wait(i32*, i64, i32*) #2

declare dso_local i32 @zpool_initialize(i32*, i64, i32*) #2

declare dso_local i32 @fnvlist_free(i32*) #2

declare dso_local i32 @zpool_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
