; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-blkid.c_print_property.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-blkid.c_print_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ID_FS_TYPE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"USAGE\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ID_FS_USAGE\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ID_FS_VERSION\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"UUID\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"ID_FS_UUID\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"ID_FS_UUID_ENC\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"UUID_SUB\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"ID_FS_UUID_SUB\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"ID_FS_UUID_SUB_ENC\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"LABEL\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"ID_FS_LABEL\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"ID_FS_LABEL_ENC\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"PTTYPE\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"ID_PART_TABLE_TYPE\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"PTUUID\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"ID_PART_TABLE_UUID\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"PART_ENTRY_NAME\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"ID_PART_ENTRY_NAME\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"PART_ENTRY_TYPE\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"ID_PART_ENTRY_TYPE\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"PART_ENTRY_\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"ID_\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"SYSTEM_ID\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"ID_FS_SYSTEM_ID\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"PUBLISHER_ID\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"ID_FS_PUBLISHER_ID\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"APPLICATION_ID\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"ID_FS_APPLICATION_ID\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"BOOT_SYSTEM_ID\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"ID_FS_BOOT_SYSTEM_ID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i8*)* @print_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_property(i32* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [256 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %10, align 16
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @streq(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @udev_builtin_add_property(i32* %15, i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %211

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @streq(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @udev_builtin_add_property(i32* %24, i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  br label %210

28:                                               ; preds = %19
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @streq(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @udev_builtin_add_property(i32* %33, i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %35)
  br label %209

37:                                               ; preds = %28
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @streq(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %44 = call i32 @blkid_safe_string(i8* %42, i8* %43, i32 256)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %48 = call i32 @udev_builtin_add_property(i32* %45, i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %47)
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %51 = call i32 @blkid_encode_string(i8* %49, i8* %50, i32 256)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %55 = call i32 @udev_builtin_add_property(i32* %52, i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %54)
  br label %208

56:                                               ; preds = %37
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @streq(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %63 = call i32 @blkid_safe_string(i8* %61, i8* %62, i32 256)
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %67 = call i32 @udev_builtin_add_property(i32* %64, i32 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %66)
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %70 = call i32 @blkid_encode_string(i8* %68, i8* %69, i32 256)
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %74 = call i32 @udev_builtin_add_property(i32* %71, i32 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %73)
  br label %207

75:                                               ; preds = %56
  %76 = load i8*, i8** %7, align 8
  %77 = call i64 @streq(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %82 = call i32 @blkid_safe_string(i8* %80, i8* %81, i32 256)
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %86 = call i32 @udev_builtin_add_property(i32* %83, i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* %85)
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %89 = call i32 @blkid_encode_string(i8* %87, i8* %88, i32 256)
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %93 = call i32 @udev_builtin_add_property(i32* %90, i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* %92)
  br label %206

94:                                               ; preds = %75
  %95 = load i8*, i8** %7, align 8
  %96 = call i64 @streq(i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @udev_builtin_add_property(i32* %99, i32 %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* %101)
  br label %205

103:                                              ; preds = %94
  %104 = load i8*, i8** %7, align 8
  %105 = call i64 @streq(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @udev_builtin_add_property(i32* %108, i32 %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* %110)
  br label %204

112:                                              ; preds = %103
  %113 = load i8*, i8** %7, align 8
  %114 = call i64 @streq(i8* %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %119 = call i32 @blkid_encode_string(i8* %117, i8* %118, i32 256)
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %123 = call i32 @udev_builtin_add_property(i32* %120, i32 %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* %122)
  br label %203

124:                                              ; preds = %112
  %125 = load i8*, i8** %7, align 8
  %126 = call i64 @streq(i8* %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %131 = call i32 @blkid_encode_string(i8* %129, i8* %130, i32 256)
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %135 = call i32 @udev_builtin_add_property(i32* %132, i32 %133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8* %134)
  br label %202

136:                                              ; preds = %124
  %137 = load i8*, i8** %7, align 8
  %138 = call i64 @startswith(i8* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %136
  %141 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 @strscpyl(i8* %141, i32 256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* %142, i32* null)
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %6, align 4
  %146 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %147 = load i8*, i8** %8, align 8
  %148 = call i32 @udev_builtin_add_property(i32* %144, i32 %145, i8* %146, i8* %147)
  br label %201

149:                                              ; preds = %136
  %150 = load i8*, i8** %7, align 8
  %151 = call i64 @streq(i8* %150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load i8*, i8** %8, align 8
  %155 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %156 = call i32 @blkid_encode_string(i8* %154, i8* %155, i32 256)
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* %6, align 4
  %159 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %160 = call i32 @udev_builtin_add_property(i32* %157, i32 %158, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i8* %159)
  br label %200

161:                                              ; preds = %149
  %162 = load i8*, i8** %7, align 8
  %163 = call i64 @streq(i8* %162, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %161
  %166 = load i8*, i8** %8, align 8
  %167 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %168 = call i32 @blkid_encode_string(i8* %166, i8* %167, i32 256)
  %169 = load i32*, i32** %5, align 8
  %170 = load i32, i32* %6, align 4
  %171 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %172 = call i32 @udev_builtin_add_property(i32* %169, i32 %170, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0), i8* %171)
  br label %199

173:                                              ; preds = %161
  %174 = load i8*, i8** %7, align 8
  %175 = call i64 @streq(i8* %174, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %173
  %178 = load i8*, i8** %8, align 8
  %179 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %180 = call i32 @blkid_encode_string(i8* %178, i8* %179, i32 256)
  %181 = load i32*, i32** %5, align 8
  %182 = load i32, i32* %6, align 4
  %183 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %184 = call i32 @udev_builtin_add_property(i32* %181, i32 %182, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i8* %183)
  br label %198

185:                                              ; preds = %173
  %186 = load i8*, i8** %7, align 8
  %187 = call i64 @streq(i8* %186, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0))
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %185
  %190 = load i8*, i8** %8, align 8
  %191 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %192 = call i32 @blkid_encode_string(i8* %190, i8* %191, i32 256)
  %193 = load i32*, i32** %5, align 8
  %194 = load i32, i32* %6, align 4
  %195 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %196 = call i32 @udev_builtin_add_property(i32* %193, i32 %194, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %189, %185
  br label %198

198:                                              ; preds = %197, %177
  br label %199

199:                                              ; preds = %198, %165
  br label %200

200:                                              ; preds = %199, %153
  br label %201

201:                                              ; preds = %200, %140
  br label %202

202:                                              ; preds = %201, %128
  br label %203

203:                                              ; preds = %202, %116
  br label %204

204:                                              ; preds = %203, %107
  br label %205

205:                                              ; preds = %204, %98
  br label %206

206:                                              ; preds = %205, %79
  br label %207

207:                                              ; preds = %206, %60
  br label %208

208:                                              ; preds = %207, %41
  br label %209

209:                                              ; preds = %208, %32
  br label %210

210:                                              ; preds = %209, %23
  br label %211

211:                                              ; preds = %210, %14
  ret void
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @udev_builtin_add_property(i32*, i32, i8*, i8*) #1

declare dso_local i32 @blkid_safe_string(i8*, i8*, i32) #1

declare dso_local i32 @blkid_encode_string(i8*, i8*, i32) #1

declare dso_local i64 @startswith(i8*, i8*) #1

declare dso_local i32 @strscpyl(i8*, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
